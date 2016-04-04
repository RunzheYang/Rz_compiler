package Rz_compiler.semantics.identifier;

import Rz_compiler.semantics.SymbolTable;
import org.omg.Messaging.SYNC_WITH_TRANSPORT;
import sun.jvm.hotspot.debugger.cdbg.Sym;

import java.util.ArrayList;
import java.util.HashMap;

/**
 * Created by YRZ on 3/30/16.
 */
public class ClassType extends Type {

    private String classname;
    private HashMap<String, Variable> members;

    public ClassType() {
        classname = "";
        members = new HashMap<String, Variable>();
    }

    public ClassType(String name) {
        classname = name;
        members = new HashMap<String, Variable>();
    }

    public void addMember(String name, Variable tp) {
        members.put(name, tp);
    }

    public HashMap<String, Variable> getMembers() {
        return members;
    }

    @Override
    public String toString() {
        return classname;
    }

    @Override
    public boolean equals(Object o) {
        return o.toString().equals(classname);
    }
}
