import React, { useEffect, useState } from 'react';
import api from './services/api';

//componente: É um bloco isolado de HTML, CSS, JS, o qual não interfere no restante da aplicação
//Estado: informações mantidadas pelo componente (lembrar: imutabilidade)
//propriedade: informações que um componente PAI passa para o componente FILHO


import './global.css';
import './App.css';
import './Sidebar.css';
import './Main.css';
import DevItem from './components/Devitem/index';
import DevForm from './components/DevForm/index';




function App() {

  const [devs, setDevs] = useState([]);

  



  

  useEffect(() => {
    async function loadDevs() {
      const response = await api.get('/devs');

      setDevs(response.data);
    }
    loadDevs();
  }, []);

  async function handleAddDev(data) {
    const response = await api.post('/devs', data)

    

    setDevs([...devs, response.data]);

  }

  return (
    <div id="app">
      <aside>
        <strong>Cadastrar</strong>
        <DevForm onSubmit={handleAddDev} />        
      </aside>

      <main>

        <ul>

          {devs.map(dev => (
            < DevItem key={dev._id} dev={dev}/>            
          ))}

        </ul>

      </main>
    </div>

  );
}

export default App;
