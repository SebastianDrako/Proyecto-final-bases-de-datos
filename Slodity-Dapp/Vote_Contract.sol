/// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "./Acction_Token.sol";

contract vote{

    ERC20 public Token_ERC20;

    votacion[]  votaciones_activas;
    votacion[] votaciones_archivadas;
    opcion[] opciones;
    voto[] votos;
    resultado[] resultados;



    constructor(address TKAddress) {

        Token_ERC20 = ERC20(TKAddress);
    }



    struct votacion {  
        bytes32 Hash; 
        string titulo; 
        string descripcion;
        bytes32[] Hash_opciones;
        string tipo;
        bytes32[] Hash_votos;
        bytes32[] Hash_resultados;
    }

    struct opcion {
        bytes32 Hash;
        string titulo;
        string descripcion;
    }

    struct voto{
        bytes32 Hash;
        address vote_address;
        bytes32[] hash_opcion;
        bytes32 Hash_votacion;
    }

    struct resultado{
        bytes32 Hash;
        bytes32 Hash_respuesta;
        bytes32 Hash_pregunta;
        uint votos;
    }


    function test (address comp) public view returns (uint256) {

       return Token_ERC20.balanceOf(comp);

    }


    function nuevaEncuesta(string memory nombre, string memory descripcion, string memory UniqueOrMulti) public {

        votaciones_activas.push(votacion(
            keccak256(abi.encode(nombre)),
            nombre,
            descripcion,
            new bytes32[](0),
            UniqueOrMulti,
            new bytes32[](0),
            new bytes32[](0)

        ));
        

    }


    function listarEncuestasActivas() public returns( string[] calldata ){

        string[] memory listOfActivePools;

        for (int memory i; i != votaciones_activas.length; i++) {
            
        }



    }

}