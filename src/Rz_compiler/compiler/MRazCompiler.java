package Rz_compiler.compiler;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

import Rz_compiler.semantics.GetClass;
import Rz_compiler.semantics.PrettyPrint;
import Rz_compiler.semantics.SemanticCheck;
import Rz_compiler.syntax.RzLexer;
import Rz_compiler.syntax.RzParser;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;
import org.antlr.v4.runtime.ANTLRInputStream;
import Rz_compiler.semantics.GetFuncAndClassMem;

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
        ParseTree tree = paser.prog();

        if (paser.getNumberOfSyntaxErrors() == 0) {
            boolean showlog = true;
            GetClass round_1 = new GetClass(showlog);
            try {
                round_1.visit(tree);
            } catch (Exception err) {
                System.err.println(err.getMessage());
                System.exit(200);
            }

            GetFuncAndClassMem round_2 = new GetFuncAndClassMem(round_1.getSymt(), showlog);
            try {
                round_2.visit(tree);
            } catch (Exception err) {
                System.err.println(err.getMessage());
                System.exit(201);
            }

            SemanticCheck round_3 = new SemanticCheck(round_2.getSymt(), showlog);
            try {
                round_3.visit(tree);
            } catch (Exception err) {
                System.err.println(err.getMessage());
                System.exit(202);
            }

        } else {
            System.out.println("Syntax Error: " + paser.getNumberOfSyntaxErrors());
            System.exit(100);
        }

//        PrettyPrint pprint = new PrettyPrint();
//        pprint.visit(tree);

        System.exit(0);
    }
}
