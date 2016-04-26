package Rz_compiler.frontend.semantics;

import Rz_compiler.frontend.semantics.identifier.*;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by YRZ on 3/30/16.
 */
public class Dictionary implements Cloneable {

    Map<String, Identifier> dictionary;

    public Dictionary() {
        dictionary = new HashMap<String, Identifier>();
    }

    public void add(String name, Identifier idf) {
        dictionary.put(name, idf);
    }

    public void rewrite(String name, Identifier idf) {
        dictionary.put(name, idf);
    }

    public Identifier lookup(String name) {
        Identifier idf =  dictionary.get(name);
        return idf;
    }

    @Override
    protected Object clone() throws CloneNotSupportedException {
        Dictionary o = (Dictionary) super.clone();
        o.dictionary = new HashMap<String, Identifier>();
        if (dictionary.keySet().size() != 0) {
            for (String name : dictionary.keySet()) {
                String key = name;
                Identifier ident = (Identifier) dictionary.get(name).clone();
                o.add(key, ident);
            }
        }
        return o;
    }
}
