(define-data-var track-storage (list (tuple (id int) (title string) (url string))))

(define-public (add-track id title url)
  (require (is-equal? (caller) (principal "your-address-here")))
  (let ((new-track (tuple (id id) (title title) (url url))))
    (ok (set track-storage (append track-storage (list new-track))))
  )
)

(define-public (get-all-tracks)
  (ok track-storage)
)

(define-data-var total-visitors (uint))

(define-public (increment-total-visitors)
  (ok (set total-visitors (+ total-visitors 1)))
)

(define-public (get-total-visitors)
  (ok total-visitors)
)

(define-data-var unique-visitors (set))

(define-public (add-unique-visitor address)
  (ok (set unique-visitors (add unique-visitors address)))
)

(define-public (get-unique-visitors)
  (ok unique-visitors)
)

(define-data-var song-requests (list (tuple (sender principal) (song string))))

(define-public (submit-song-request song)
  (let ((sender (tx-sender)))
    (ok (set song-requests (append song-requests (list (tuple (sender sender) (song song))))))
  )
)

(define-public (get-song-requests)
  (ok song-requests)
)

(define-data-var streaming-service-url (string ""))

(define-public (set-streaming-service-url new-url)
  (require (is-equal? (caller) (principal "your-address-here")))
  (begin
    (ok (set streaming-service-url new-url))
    (ok "Streaming service URL updated successfully")
  )
)

(define-public (get-streaming-service-url)
  (ok streaming-service-url)
)
