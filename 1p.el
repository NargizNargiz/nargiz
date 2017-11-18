(defun Flatten (X)
    (cond ((null X) nil)
          ((atom X)(cons X ()))
          (t (append (Flatten (car X))
                     (Flatten (cdr X)) ))
          ))
(defun fun2 (x l res)
    (cond ( (null l) res)
          ( (null (cdr l)) (cond ( (atom x)  (cons (list x   (car l)) res ) )
                                 ( (listp x) (cons (cons (car l) x) res ) )
                                 ))
          ( t (fun2 x (cdr l) ( cond ( (atom x)  (cons (list x   (car l)) res ) )
                                     ( (listp x) (cons (cons (car l) x) res ) )
                                     )))
          ))
(defun fun11 (l1 l2)(fun22 l1 l2 nil))
(defun fun22 (l1 l2 res)
    (cond ( (null l1) res)
          ( (null l2) l1)
          ( (null (cdr l1)) (myfl (fun2 (car l1) l2 res) ) )
          ( t (fun22 (cdr l1) l2 (myfl (fun2 (car l1) l2 res))))
          ))
(fun11 '(x1 y1) '(x y z1) '( x x))
(defun newf1 (l)(newf2 l nil))
(defun newf2 (l res)
    (cond ( (null l) res)
          ( (null (cddr l)) (fun22 (car l) (cadr l) nil))
          ( t (newf2 (cons (fun22 (car l) (cadr l) nil) (cddr l)) (cons (fun22 (car l) (cadr l) nil) res )))
          ))
(cddr '((y) (x z) (h u)) )
(cons (fun22 (car '((y) (x z) (h u))) (cadr '((y) (x z) (h u)) ) nil) (cddr '((y) (x z) (h u)) ))

(newf1 '( (a b c) (a b) (b c)))
(delete_for_& (newf1 ' ( (a b c) ( a b))))
(mapcar 'fun&  (unlist 'list (newf1 '((a b c) (a b) (b c))) (newf1 '((1 0 1) (1 1) (0 0)))))
(unlist 'list (newf1 '((a b c) (a b) (b c))) (newf1 '((1 0 1) (1 1) (0 0))))
(mapcar 'fun& '( ((q w q ) (1 0 0) ) ((e r o) (1 0 1))))
(fun&  '((q w q ) (1 0 0) ))
(fun& '((e r o) (1 0 1)))

(newf1 '(() ( b c) ))
(newf1 '( (b c) (a)))
(newf1 '( (0 0) (1)))
(newf1 '( (1 0 1) (1 1) (0 0)))
(newf1 '((x1 y1) (x y z1)))
(newf1 '((0 0) (1 1 0)))
(unlist 'list (newf1 '((x y) (x y z))) (newf1 '((0 0) (1 1 0))) )


(fun22 (car '( (y) (x z))) (cadr '( (y) (x z))) nil)
(newf1 '( (y) (x z) (h u) ))
(newf1 '((x1 y1) (x y z1)))
(newf1 '((0 0) (1 1 0)))

(fun22  '(x t y) '(x c v) nil)
(fun22 '((x x1) (x y1) (x z1) (y x1) (y y1) (y z1) (z x1) (z y1) (z z1)) '(x2 y2 z2) nil)
(myfl (fun22  '((x t) (y u)) '(x c v) nil))
(Flatten '(z))
(myfl '(z) )
(myfl '((x (r t)) (f (g p )) (l ( m n))))

(defun myfl (l)
    (cond ( (null l) nil)
          ( (null (cdr l)) (list (Flatten  (carl) )))
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
          ( (null (cdr l)) nil)
          ( (and (eq_all (car l) (eq_all (cadr l))) (list (list  (caar l)) (list (caadr l)))))
          (t l)))
(defun delete_for_&(l)
    (cond ( (null l) nil )
          ( (null (cdr l)) nil)
          ( (null (cdar l)) l)
          ( (and (eq_all (car l)) (not (eq_all (cadr l)))) nil)
          ( t l)))
(cdar '( (3 ) (f re)))
(defun my_not (x)
    (cond ((atom x) (cond ((eq x 1) 0)
                          (t 1))
           )))
(defun fun& (l) (fun&1 (car l) (cadr l)))
(defun fun&1 (l1 l2)
    (cond ( (null l1) nil)
          ( (check (car l1) (cdr l1) (my_not (car l2)) (cdr l2)) nil )
          (t l))
    ( t(fun&1 (cdr l1) (cdr l2)))
    )))
(null (cddr '(1 3 8)))
(defun check (x l1 n l2)
    (cond ( (null l1) nil)
          ( (null l2) nil)
          ( (and (null (cdr l1)) (null (cdr l2))) (cond ((and(equal x (car l1)) (equal n (car l2))) t)))
          ( t (or (and(equal x (car l1)) (equal n (car l2))) (check x (cdr l1) n (cdr l2))))
          ))

(check (caar '(( a b a) (0 1 1))) (cdar '(( a b a) (0 1 1))) (my_not (cadr '(( a b a) (0 1 1)))) (cddr '(( a b a) (0 1 1))))
(fun& '(( a b a) (0 1 0)))
(fun& '(( a b d a f d ) (0 1 1 0 1 0)) )

(my_not (caadr  '(( a b a) (0 1 1)) ) )
(defun del_nil (l) (del_nil1 l nil))
(defun del_nil1 (l res)
    (cond ( (null l) res)
          ( (null (cdr l)) (cond ( (null (car l)) res)
                                 (t( cons (car l) res))))
          ( t (del_nil1 (cdr l) (cond ( (null (car l)) res)
                                      (t (cons (car l) res)))))))
(defun unlist (f x y)
    (cond ( (or (null x) (null y)) nil)
          ( t(cons (funcall f (car x) (car y)) (unlist f (cdr x) (cdr y))))))
(defun unlist2 (x y)
    (cond ( (or (null x) (null y)) nil)
          ( t(cons (cons x (car y)) (unlist2 x (cdr y)))))
    )
(unlist2 '(x 1) '(((x y) (0 1)) ((e r) (1 1)) ((u m) (1 0))) )
(unlist 'list '(((x y) (0 1)) ((e r) (1 1)) ((u m) (1 0))) '(((x y) (0 1)) ((e r) (1 1)) ((u m) (1 0))) )
(apply 'insert 'x '1 (cdr '(((x y) (0 1)) ((e r) (1 1)) ((u m) (1 0)) )))
(caaar '(((x y) (0 1)) ((e r) (1 1)) ((u m) (1 0))))
(caadar '(((x y) (0 1)) ((e r) (1 1)) ((u m) (1 0))))
(cadr '(((x y) (0 1)) ((e r) (1 1)) ((u m) (1 0))))
(unlist2 (list (caaar '(((x y) (0 1)) ((e r) (1 1)) ((u m) (1 0)))) (caadar '(((x y) (0 1)) ((e r) (1 1)) ((u m) (1 0))))) (cdr '(((x y) (0 1)) ((e r) (1 1)) ((u m) (1 0)) )))
(caaar '(((x y) (0 1)) ((e r) (1 1)) ((u m) (1 0))))

(cddr '(1 2))
(del_nil '(1 nil 2 nil 1 2 3 4) )
(del_nil (mapcar 'delete_for_&  (unlist 'list (newf1 '((x y) (x y z))) (newf1 '((0 0) (1 1 0))))))

(newf1 '((x y) (x y z)) )
(caadar '((( x e) ( 0 1) ) ))
(del_nil (mapcar 'car (mapcar 'delete_for_&  (unlist 'list (newf1 '((x y) (x y z))) (newf1 '((0 0) (1 1 0)))))))
(del_nil (mapcar 'cadr (mapcar 'delete_for_&  (unlist 'list (newf1 '((x y) (x y z))) (newf1 '((0 0) (1 1 0)))))))
(mapcar 'car '(( (1 2) (4 5)) nil  ((3 7) (9 4)) (( 44 5) ( 55 6)) ) )
(del_nil (mapcar 'car (mapcar 'delete_for_&  (unlist 'list (newf1 '((x y) (x y z))) (newf1 '((0 0) (1 1 0)))))))
(mapcar 'cdr (mapcar 'delete_for_&  (unlist 'list (newf1 '((x y) (x y z))) (newf1 '((0 0) (1 1 0))))))
(mapcar 'delete_for_&  (unlist 'list (newf1 '((x y) (x y z))) (newf1 '((0 0) (1 1 0)))))

(eq_all '(1 0 1 1 ))

(cddr '((x y) (e t) (m n)))
(fun11 '((x x1) (x y1)  (y z1)  (y x1) (y x1) (y z1)  (z x1)  (z y1) (z z1) ) '(x2 y2 z2) )
(fun11 '((x e)  (x t) (y e)  (y t) ) '(m n) )
(fun11 '(x y z) ' (e r t))
(fun22 '(xyz) )
(fun3311 '( (x y) (e t) ))

(fun11 '( (x q) (x - w)  (x r) (y q) (y - w) (y r) (z q) (z- w) (z r)) '(g u t) )
(fun2 ' (x0 x1) '( (x3 x4) (y4 x3)  (y3 x4) (y3 y4)) nil)
(fun2 ' (x0 x1) '( (x3 x4) (y4 x3)  (y3 x4)) nil)
