package Rz_compiler.backend.controlflow;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/**
 * Created by YRZ on 4/20/16.
 */
public abstract class AbstractGraph<NODE> implements Iterable<NODE> {

    private Map<NODE, Set<NODE>> graph = new HashMap<>();

    public Set<NODE> getNodeSet() {
        return graph.keySet();
    }

    public Set<NODE> getAdjacent(NODE node) {
        return graph.get(node);
    }

    public void addNode(NODE node, Set<NODE> adjacent) {
        if (graph.containsKey(node)) {
            graph.get(node).addAll(adjacent);
        } else {
            graph.put(node, adjacent);
        }
    }

    public void remove(NODE node) {
        graph.remove(node);
    }

    @Override
    public Iterator<NODE> iterator() {
        return graph.keySet().iterator();
    }

    @Override
    public String toString() {
        String s = "";
        for (NODE node : graph.keySet()) {
            s += node + ": " + graph.get(node) + "\n";
        }
        return s;
    }

    public static <T,E> boolean isEqual(Map<T,Set<E>> g1, Map<T,Set<E>> g2) {
        if(!g1.keySet().equals(g2.keySet())) {
            return false;
        }
        for(T key : g1.keySet()) {
            if(!g1.get(key).equals(g2.get(key))) {
                return false;
            }
        }
        return true;
    }
}
