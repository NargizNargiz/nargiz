(defun Flatten (X)
    (cond ((null X) nil)
          ((atom X)(cons X ()))
          (t (append (Flatten (car X))
                     (Flatten (cdr X)) ))
          ))
(defun fun11 (l1 l2)(fun22 l1 l2 nil))
(defun fun22 (l1 l2 res)
    (cond ( (null l1) res)
          ( (null l2) l1)
          ( (null (cdr l1)) (myfl (fun2 (car l1) l2 res) ) )
          ( t (fun22 (cdr l1) l2 (myfl (fun2 (car l1) l2 res))))
          ))
(defun fun2 (x l res)
    (interactive)
    (cond ( (null l) res)
          ( (null (cdr l)) (cond ( (atom x)  (cons (list x   (car l)) res ) )
                                 ( (listp x) (cons (cons (car l) x) res ) )
                                 ))
          ( t (fun2 x (cdr l) ( cond ( (atom x)  (cons (list x   (car l)) res ) )
                                     ( (listp x) (cons (cons (car l) x) res ) )
                                     )))
          ))
(defun myfl (l)
    (cond ( (null l) nil)
          ( (null (cdr l)) (list (Flatten  (car l) )))
          ( t (cons (Flatten (car l)) (myfl (cdr l))  ))
          ))
(defun fun3311 (l) (fun33 l nil nil))
(defun fun33(l res1 res2)
    (cond ( (null l) res2)
          ( (null (cddr l))  (fun33 nil (fun22 (car l) (cadr l) res1)  (cons (fun22 (car l) (cadr l) res1) res2 )))))


(defun find (l res)
    (cond ( (null l) res)
          ( (null (cddr l)) (find1 (unlist2 (list (caaar l) (caadar l)) (cadr l) )))
          ( t (mapcar 'find1 (unlist2 (list (caaar l) (caadar l)) (cdr l))))))
(defun delete_for_v (l)
    (cond ( (null l) nil)
          ( (null (car l)) nil)
          ( (and (eq_all (car l) (eq_all (cadr l))) (list (list  (caar l)) (list (caadr l)))))
          (t l)))
(defun delete_for_&(l)
    (cond ( (null l) nil )
          ( (null (Cdr l)) nil)
          ( (and (eq_all (car l)) (not (eq_all (cadr l)))) nil)
          ( t l)))
(defun eq_all (l)
    (cond ( (null l) nil)
          ( (null (cddr l)) (equal (car l) (cadr l)))
          ( t(and (equal (car l) (cadr l)) (eq_all (cdr l))))
          ))
(defun del_nil (l) (del_nil1 l nil))
(defun del_nil1 (l res)
    (cond ( (null l) res)
          ( (null (cdr l)) (cond ( (null (car l)) res)
                                 (t( cons (car l) res))))
          ( t (del_nil1 (cdr l) (cond ( (null (car l)) res)
                                      (t (cons (car l) res)))))))

(unlist2 '(x 1) '(((x y) (0 1)) ((e r) (1 1)) ((u m) (1 0))) )
(apply 'insert 'x '1 (cdr '(((x y) (0 1)) ((e r) (1 1)) ((u m) (1 0)) )))
(caaar '(((x y) (0 1)) ((e r) (1 1)) ((u m) (1 0))))
(caadar '(((x y) (0 1)) ((e r) (1 1)) ((u m) (1 0))))
(cadr '(((x y) (0 1)) ((e r) (1 1)) ((u m) (1 0))))
(unlist2 (list (caaar '(((x y) (0 1)) ((e r) (1 1)) ((u m) (1 0)))) (caadar '(((x y) (0 1)) ((e r) (1 1)) ((u m) (1 0))))) (cdr '(((x y) (0 1)) ((e r) (1 1)) ((u m) (1 0)) )))
(caaar '(((x y) (0 1)) ((e r) (1 1)) ((u m) (1 0))))

(cddr '(1 2))
(del_nil '(1 nil 2 nil 1 2 3 4) )
(del_nil (mapcar 'delete_for_&  (unlist 'list (newf1 '((x y) (x y z))) (newf1 '((0 0) (1 1 0))))))

(caadar '((( x e) ( 0 1) ) ))
(del_nil (mapcar 'car (mapcar 'delete_for_&  (unlist 'list (newf1 '((x y) (x y z))) (newf1 '((0 0) (1 1 0)))))))
(del_nil (mapcar 'cadr (mapcar 'delete_for_&  (unlist 'list (newf1 '((x y) (x y z))) (newf1 '((0 0) (1 1 0)))))))
(mapcar 'car '(( (1 2) (4 5)) nil  ((3 7) (9 4)) (( 44 5) ( 55 6)) ) )
(mapcar 'car (mapcar 'delete_for_&  (unlist 'list (newf1 '((x y) (x y z))) (newf1 '((0 0) (1 1 0))))))
(mapcar 'cdr (mapcar 'delete_for_&  (unlist 'list (newf1 '((x y) (x y z))) (newf1 '((0 0) (1 1 0))))))
(mapcar 'delete_for_&  (unlist 'list (newf1 '((x y) (x y z))) (newf1 '((0 0) (1 1 0)))))

(eq_all '(1 0 1 1 ))
(newf1 '( (y) (x z) ))
(newf1 '((x1 y1) (x y z1)))
(newf1 '((0 0) (1 1 0)))
(unlist 'list (newf1 '((x y) (x y z))) (newf1 '((0 0) (1 1 0))) )
(cddr '((x y) (e t) (m n)))
(fun11 '((x x1) (x y1)  (y z1)  (y x1) (y x1) (y z1)  (z x1)  (z y1) (z z1) ) '(x2 y2 z2) )
(fun11 '((x e)  (x t) (y e)  (y t) ) '(m n) )
(fun11 '(x y z) ' (e r t))
(fun22 '(xyz) )
(fun3311 '( (x y) (e t) ))

(fun11 '( (x q) (x - w)  (x r) (y q) (y - w) (y r) (z q) (z- w) (z r)) '(g u t) )
(fuen2 ' (x0 x1) '( (x3 x4) (y4 x3)  (y3 x4) (y3 y4)) nil)
(fun2 ' (x0 x1) '( (x3 x4) (y4 x3)  (y3 x4) (y3 y4)) nil)
(fun2 ' (x0 x1) '( (x3 x4) (y4 x3)  (y3 x4)) nil)
