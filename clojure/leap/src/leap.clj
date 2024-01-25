(ns leap)

(defn leap-year?
  [year]
  (cond
    (zero? (mod year 400))
    true
    :else
    (cond
      (zero? (mod year 100))
      false
      :else
      (zero? (mod year 4)))))