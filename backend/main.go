package main

import (
	"fmt"
	"net/http"

	"github.com/gorilla/mux"
)

func apiHandler(w http.ResponseWriter, r *http.Request) {
	w.Write([]byte("Gorilla\n"))
}

func main() {
	r := mux.NewRouter()
	r.HandleFunc("/api", apiHandler)
	fmt.Println("Hello World")

	http.ListenAndServe(":8080", r)
}
