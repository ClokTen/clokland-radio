(define (get-track (track-id uint))
  (let ((track (map-get? tracks track-id)))
    (if (is-none track)
      (err u404) ; Track not found
      (unwrap track))))

(define (add-track (track-id uint) (track-url (string-ascii 100)))
  (begin
    (map-set tracks track-id track-url)
    (ok true)))

(define (remove-track (track-id uint))
  (let ((existing (map-get? tracks track-id)))
    (if (is-none existing)
      (err u404) ; Track not found
      (begin
        (map-delete tracks track-id)
        (ok true)))))

(define-map tracks
  ((track-id uint)) ; Key: track ID
  ((track-url (string-ascii 100)))) ; Value: track URL

(define-public (add-new-track (track-id uint) (track-url (string-ascii 100)))
  (if (not (is-none (map-get? tracks track-id)))
    (err u409) ; Track already exists
    (add-track track-id track-url)))

(define-public (delete-track (track-id uint))
  (remove-track track-id))

(define-public (get-track-url (track-id uint))
  (get-track track-id))
