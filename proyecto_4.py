#Importaciones de tkinter
from tkinter import *
from tkinter import ttk
import auto_database
from PIL import ImageTk, Image

window = Tk()



#titulo  de la pantalla
window.title('Registro de autos')

#Dimensiones de la pantalla principal
window.geometry('450x710+450+10')

#Estructura de de la  pantalla
window.config(bg='#D2B1DE')

modelo = StringVar()
color = StringVar()
año = StringVar()
cliente = StringVar()

# Funciones de los botones
def crear_sala():
    modelo = caja_modelo.get()
    color = caja_color.get()
    año = caja_año.get()
    cliente = caja_cliente.get()
    demo_db = auto_database.MyDatabase()
    demo_db.insert_db(modelo, color, año, cliente)


#Estructura de los frame
fondo2  = Frame(window,
                bg='#A012D1',
                width=400,
                height=300)
fondo2.place(x=25, y=386)

fondo3  = Frame(window,
                bg='#f0f0f0',
                width=350,
                height=600)
fondo3.place(x=50, y=58) 


#Label del fondo 3
Label(fondo3,
        text='Registro del tipo de\nautomovil',
        bg='#f0f0f0',
        font=('Century Gothic', '14', 'bold')).place(x=80, y=10)


#lOGO

image = Image.open('logo-macareno.png')
image = image.resize((150, 100), Image.ANTIALIAS)

img = ImageTk.PhotoImage(image)
lbl_img = Label(fondo3, image = img)
lbl_img.place(x=95, y=90)

#Funcion del combobox

db_demo = auto_database.MyDatabase()
db_demo.read_db()
registro = auto_database.data
for user in auto_database.data:
        print(user)

#Cierre de la funcion del combobox

#Etiquetas de la caja modelo
Label(fondo3,
        text='MODELO',
        bg='#f0f0f0',
        font=('Century Gothic', '12', 'bold')).place(x=40, y=220)

n = StringVar()
caja_modelo = ttk.Combobox(window,
                        width = 18, 
                        textvariable =n,
                        font=('Century Gothic', '12', 'bold'))

caja_modelo['values'] = (registro)

caja_modelo.place(x=170, y=279)

#Etiquetas de la caja color
Label(fondo3,
        text='COLOR',
        bg='#f0f0f0',
        font=('Century Gothic', '12', 'bold')).place(x=40, y=280)

caja_color = Entry(fondo3,
                    width=20,
                    fg='#4D5064',
                    font=('Century Gothic', '12', 'bold'))
caja_color.place(x=120, y=280)

#Etiquetas de la caja año
Label(fondo3,
        text='AÑO',
        bg='#f0f0f0',
        font=('Century Gothic', '12', 'bold')).place(x=40, y=340)

caja_año = Entry(fondo3,
                    width=20,
                    fg='#4D5064',
                    font=('Century Gothic', '12', 'bold'))
caja_año.place(x=120, y=340)

#Etiquetas de la caja cliente
Label(fondo3,
        text='CLIENTE',
        bg='#f0f0f0',
        font=('Century Gothic', '12', 'bold')).place(x=40, y=400)

caja_cliente = Entry(fondo3,
                    width=20,
                    fg='#4D5064',
                    font=('Century Gothic', '12', 'bold'))
caja_cliente.place(x=120, y=400)

#Botones del fondo 3

btn_registrar = Button(fondo3, 
                        text='REGISTRAR',
                        font=('Century Gothic', '12', 'bold'),
                        width=29,
                        height=2,
                        bg='#D047EB',
                        command = crear_sala)
btn_registrar.place(x=40, y=500)


window.mainloop()
