 package main

 import (
 	"net/http"
 	"os"
 )

 func CurrentURL(r *http.Request) string {
 	hostname, err := os.Hostname()

 	if err != nil {
 		panic(err)
 	}

 	return hostname + r.URL.Path
 }

 func DisplayCurrentURL(w http.ResponseWriter, r *http.Request) {
 	w.Write([]byte("[current url] : " + CurrentURL(r) + "\r\n"))
 }

 func main() {
 	// http.Handler
 	mux := http.NewServeMux()
 	mux.HandleFunc("/", DisplayCurrentURL)
 	http.ListenAndServe("", mux)
 }