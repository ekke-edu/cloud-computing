import devopsImg from "./assets/devops.png";
import "./App.css";

export default function App() {
  return (
    <section id="center">
      <div className="hero">
        <img src={devopsImg} className="base" />
      </div>
      <div>
        <h1>Felhőalapú számítástechnika</h1>
        <h2>LBT_PI255G3</h2>
        <p>
          <strong>Név:</strong> Szilvási Péter <br />
          <strong>Neptun kód:</strong> ABC123
        </p>
      </div>
    </section>
  );
}