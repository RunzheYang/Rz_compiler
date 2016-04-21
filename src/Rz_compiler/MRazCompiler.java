package Rz_compiler;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

import Rz_compiler.backend.codegen.CodeGenerator;
import Rz_compiler.frontend.semantics.GetClass;
import Rz_compiler.frontend.semantics.PrettyPrint;
import Rz_compiler.frontend.semantics.SemanticCheck;
import Rz_compiler.frontend.syntax.RzLexer;
import Rz_compiler.frontend.syntax.RzParser;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;
import org.antlr.v4.runtime.ANTLRInputStream;
import Rz_compiler.frontend.semantics.GetFuncAndClassMem;

public class MRazCompiler {

    public static void main(String[] args) throws IOException {

        String inputFile = null;
        if (args.length > 0)
            inputFile = args[0];
        InputStream is = System.in;
        if (inputFile != null)
            is = new FileInputStream(inputFile);

        ANTLRInputStream input = new ANTLRInputStream(is);
        RzLexer lexer = new RzLexer(input);
        CommonTokenStream tokens = new CommonTokenStream(lexer);
        RzParser paser = new RzParser(tokens);
        ParseTree program = paser.prog();

        frontendTest(paser, program, true, false);

        int optlevel = 0;
        String mipsCode = new CodeGenerator((RzParser.ProgContext) program).compile(optlevel);
        System.out.println(mipsCode);

        System.exit(0);
    }

    private static void frontendTest(RzParser paser, ParseTree tree, boolean showlog, boolean reprint) {
        if (paser.getNumberOfSyntaxErrors() == 0) {
            GetClass round_1 = new GetClass(showlog);
            try {
                round_1.visit(tree);
            } catch (Exception err) {
                System.err.println(err.getMessage());
                System.exit(1);
            }

            GetFuncAndClassMem round_2 = new GetFuncAndClassMem(round_1.getSymt(), showlog);
            try {
                round_2.visit(tree);
            } catch (Exception err) {
                System.err.println(err.getMessage());
                System.exit(1);
            }

            SemanticCheck round_3 = new SemanticCheck(round_2.getSymt(), showlog);
            try {
                round_3.visit(tree);
            } catch (Exception err) {
                System.err.println(err.getMessage());
                System.exit(1);
            }

        } else {
            System.out.println("Syntax Error: " + paser.getNumberOfSyntaxErrors());
            System.exit(1);
        }

        if (reprint) {
            PrettyPrint pprint = new PrettyPrint();
            pprint.visit(tree);
        }
    }
}
