package Rz_compiler.frontend.semantics.identifier;

import java.util.HashMap;

/**
 * Created by YRZ on 3/30/16.
 */
public class ClassType extends Type {

    private final int WORD_SIZE = 4;

    private String classname;
    private int cnt = 0;
    private HashMap<String, Variable> members;
    private HashMap<String, Integer> memberOffsets;

    public ClassType(String name) {
        classname = name;
        members = new HashMap<String, Variable>();
        memberOffsets = new HashMap<>();
    }

    public void addMember(String name, Variable tp) {
        members.put(name, tp);
        memberOffsets.put(name, (cnt++) * WORD_SIZE);
    }

    public HashMap<String, Variable> getMembers() {
        return members;
    }

    public HashMap<String, Integer> getMemberOffsets() {
        return memberOffsets;
    }

    public int getOffSet() {
        return cnt * WORD_SIZE;
    }

    @Override
    public String toString() {
        return classname;
    }

    @Override
    public boolean equals(Object o) {
        return o.toString().equals(classname);
    }

    @Override
    public Object clone() throws CloneNotSupportedException {
        ClassType o = (ClassType) super.clone();
        o.classname = classname;
        o.cnt = cnt;
        o.members = new HashMap<>();
        if (members.keySet().size() > 0) {
            for (String name : members.keySet()) {
                String newname = name;
                Variable newvar = (Variable) members.get(name).clone();
                o.members.put(newname, newvar);
            }
        }
        o.memberOffsets = new HashMap<>();
        if (memberOffsets.keySet().size() > 0) {
            for (String name : memberOffsets.keySet()) {
                String newname = name;
                int newoff = memberOffsets.get(name);
                o.memberOffsets.put(newname, newoff);
            }
        }

        return o;
    }
}
