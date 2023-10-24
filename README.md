# state_management_codelab

## Pembahasan:

  - ### Stateless Widget
    Counter App yang kita buat dengan stateless widget, tidak dapat merubah value counter yang tampil pada User Interface. Sekalipun kita membuat method untuk merubah value counter, seperti contoh code berikut ini:

    ```dart
    class CounterWidget extends StatelessWidget {
      const CounterWidget({super.key});

      @override
      Widget build(BuildContext context) {
        int counter = 0;

        void increment() {
          counter++;
        }

        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Counter Value: $counter'),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  increment();
                },
                child: const Text('Increment'),
              ),
            ],
          ),
        );
      }
    }
    ```

    Walaupun saat kita menekan tombol Increment yang akan menjalankan method increment(), value variabelnya berubah belakang tapi pada UInya tidak berubah. Itu karena pada saat widget tersebut di build, widget itu akan mengikuti value yang sudah dideklarasikan diawal. 

  - ### Stateful Widget
    Sedangkan jika kita membuat Counter Appnya menggunakan stateful widget, maka jika kita menekan tombol increment, value pada UInya akan ikut berubah. Karena stateful widget mempunyai method khusus yang digunakan untuk merubah tampilan UI jika ada interaksi atau value yang berubah.

    ```dart
    void incrementCounter() {
      setState(() {
        counter++;
      });
    }
    ```

    pada stateful widget terdapat method setState() yang berfungsi untuk merubah tampilan UI sesuai dengan value yang berubah.

## Kesimpulan:
  Jadi penggunaan Stateless dan Stateful Widget tergantung kebutuhan. Kalau kita ingin membuat UI yang statis atau tidak akan mengalami perubahan tampilan, maka disarankan untuk menggunakan Stateless Widget. Sedangkan kalau kita ingin membuat UI yang dinamis atau bisa berubah-ubah, makan gunakanlah Stateful Widget.