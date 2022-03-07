import React, { useState } from 'react';
import {
  MDBTabs,
  MDBTabsItem,
  MDBTabsLink,
  MDBTabsContent,
  MDBTabsPane
} from 'mdb-react-ui-kit';
import navlogo from './images/logoblanco.PNG'
import logofit from './images/MakeiT_FIT.png'
import logoabg from './images/logoabg.png'
import 'bootstrap/dist/css/bootstrap.min.css';
import {Container, Navbar, ListGroup, Row, Col, Form, Image, Nav} from 'react-bootstrap'

export default function App() {
  const [fillActive, setFillActive] = useState('tab1');

  const handleFillClick = (value: string) => {
    if (value === fillActive) {
      return;
    }

    setFillActive(value);
  };

  return (
    <div>
      {/* <----- Inicio navbar -----> */}
      <Navbar expand="lg" variant="dark" bg="dark">
        <Container>
          <Navbar.Brand href="#">
            <Image className="navlogo" src={navlogo}></Image>
          </Navbar.Brand>
          <Nav className="justify-content-end" className="me-auto">
            <Nav.Link href="#resultados">RESULTADOS</Nav.Link>
          </Nav>
        </Container>
      </Navbar>
      {/* <----- Termino navbar -----> */}
      {/* <----- Inicio titulo -----> */}
      <Container fluid className="m-5 titulo" style= {{ textAlign: "center" }}>
        <h1>Física 1° y 2° medio</h1><br/>
        <p>Ciencias naturales</p>
      </Container>
      {/* <----- Termino titulo -----> */}
        <br/><br/><br/><br/>
      {/* <----- Inicio navpills -----> */}
      <Container className="bg-light pillsnav">
        <MDBTabs pills fill className='mb-3 '>
          <MDBTabsItem>
            <MDBTabsLink onClick={() => handleFillClick('tab1')} active={fillActive === 'tab1'}>
              UNIDAD I
            </MDBTabsLink>
          </MDBTabsItem>
          <MDBTabsItem>
            <MDBTabsLink onClick={() => handleFillClick('tab2')} active={fillActive === 'tab2'}>
              UNIDAD II
            </MDBTabsLink>
          </MDBTabsItem>
          <MDBTabsItem>
            <MDBTabsLink onClick={() => handleFillClick('tab3')} active={fillActive === 'tab3'}>
              UNIDAD III
            </MDBTabsLink>
          </MDBTabsItem>
          <MDBTabsItem>
            <MDBTabsLink onClick={() => handleFillClick('tab4')} active={fillActive === 'tab4'}>
              UNIDAD IV
            </MDBTabsLink>
          </MDBTabsItem>
          <MDBTabsItem>
            <MDBTabsLink onClick={() => handleFillClick('tab5')} active={fillActive === 'tab5'}>
              RESULTADOS
            </MDBTabsLink>
          </MDBTabsItem>
          <MDBTabsItem>
            <MDBTabsLink onClick={() => handleFillClick('tab6')} active={fillActive === 'tab6'}>
              INDICE TEMATICO
            </MDBTabsLink>
          </MDBTabsItem>
        </MDBTabs>

        <MDBTabsContent>
          <MDBTabsPane className="clases m-2" show={fillActive === 'tab1'}>
            <ListGroup>
              <ListGroup.Item>Clase 1: Cras justo odio</ListGroup.Item>
              <ListGroup.Item>Clase 2: Dapibus ac facilisis in</ListGroup.Item>
              <ListGroup.Item>Clase 3: Morbi leo risus</ListGroup.Item>
              <ListGroup.Item>Clase 3: Porta ac consectetur ac</ListGroup.Item>
              <ListGroup.Item>Clase 4: Vestibulum at eros</ListGroup.Item>
            </ListGroup>
          </MDBTabsPane>
          <MDBTabsPane show={fillActive === 'tab2'}>
          <ListGroup>
              <ListGroup.Item>Clase 1: Cras justo odio</ListGroup.Item>
              <ListGroup.Item>Clase 2: Dapibus ac facilisis in</ListGroup.Item>
              <ListGroup.Item>Clase 3: Morbi leo risus</ListGroup.Item>
              <ListGroup.Item>Clase 3: Porta ac consectetur ac</ListGroup.Item>
              <ListGroup.Item>Clase 4: Vestibulum at eros</ListGroup.Item>
            </ListGroup>
          </MDBTabsPane>
          <MDBTabsPane show={fillActive === 'tab3'}>
          <ListGroup>
              <ListGroup.Item>Clase 1: Cras justo odio</ListGroup.Item>
              <ListGroup.Item>Clase 2: Dapibus ac facilisis in</ListGroup.Item>
              <ListGroup.Item>Clase 3: Morbi leo risus</ListGroup.Item>
              <ListGroup.Item>Clase 3: Porta ac consectetur ac</ListGroup.Item>
              <ListGroup.Item>Clase 4: Vestibulum at eros</ListGroup.Item>
            </ListGroup>
          </MDBTabsPane>
          <MDBTabsPane show={fillActive === 'tab4'}>
          <ListGroup>
              <ListGroup.Item>Clase 1: Cras justo odio</ListGroup.Item>
              <ListGroup.Item>Clase 2: Dapibus ac facilisis in</ListGroup.Item>
              <ListGroup.Item>Clase 3: Morbi leo risus</ListGroup.Item>
              <ListGroup.Item>Clase 3: Porta ac consectetur ac</ListGroup.Item>
              <ListGroup.Item>Clase 4: Vestibulum at eros</ListGroup.Item>
            </ListGroup>
          </MDBTabsPane>
          <MDBTabsPane style= {{ textAlign: "center" }} show={fillActive === 'tab5'}>
            <h1>Pendiente</h1>
          </MDBTabsPane>
          <MDBTabsPane show={fillActive === 'tab6'}>
          <ListGroup>
              <ListGroup.Item>Aerodinamica: Cras justo odio (lista paginada con orden alfabetico de los topicos tocados en las clases)</ListGroup.Item>
              <ListGroup.Item>Clase 2: Dapibus ac facilisis in</ListGroup.Item>
              <ListGroup.Item>Clase 3: Morbi leo risus</ListGroup.Item>
              <ListGroup.Item>Clase 3: Porta ac consectetur ac</ListGroup.Item>
              <ListGroup.Item>Clase 4: Vestibulum at eros</ListGroup.Item>
            </ListGroup>
          </MDBTabsPane>
        </MDBTabsContent>
        <br/>
      </Container>
      {/* <----- Termino navpills -----> */}
      <br/><br/><br/>
      {/* <----- Inicio footer -----> */}
      <div class="pb-5 footer">
        <Container>
          <Row>
            <Col sm={4} className="mt-5">
              <br/>
              <div class="d-flex align-items-center">
                <Image className="logos" src={logofit}></Image>
                <Image className="logos" src={logoabg}></Image>
              </div>
            </Col>
            <Col className="links mt-5">
              <br/><br/><br/>
              <a href="https://youtu.be/dQw4w9WgXcQ">Conocenos</a>

            </Col>
            <Col className="links mt-5">
              <br/><br/><br/>
              <a href="https://youtu.be/dQw4w9WgXcQ">Siguenos en redes sociales</a>
            </Col>
            <Col className="links mt-5">
              <Container className="bg-light form">
              <br/>
              <Form>
                <Form.Group className="mb-3" controlId="exampleForm.ControlInput1">
                  <Form.Label>Reportanos un problema</Form.Label>
                  <Form.Control type="email" placeholder="name@example.com" />
                </Form.Group>
                <Form.Group className="mb-3" controlId="exampleForm.ControlTextarea1">
                  <Form.Label>Explicanos el problema</Form.Label>
                  <Form.Control as="textarea" rows={3} />
                </Form.Group>
                <br/>
              </Form>
              </Container>
            </Col>
          </Row>
        </Container>
      </div>
      {/* <----- Termino footer -----> */}
    </div>
  );
}