<?php

class Banco
{
    private static $dbNome = 'silvat81_sts';
    private static $dbHost = 'localhost:3306';
    private static $dbUsuario = 'silvat81_silvatc';
    private static $dbSenha = '2QiRpXxRgR5BhyT';
    
    private static $cont = null;
    
    public function __construct() 
    {
        die('A função Init nao é permitido!');
    }
    
    public static function conectar()
    {
        if(null == self::$cont)
        {
            try
            {
                self::$cont =  new PDO( "mysql:host=".self::$dbHost.";"."dbname=".self::$dbNome, self::$dbUsuario, self::$dbSenha); 
            }
            catch(PDOException $exception)
            {
                die($exception->getMessage());
            }
        }
        return self::$cont;
    }
    
    public static function desconectar()
    {
        self::$cont = null;
    }
}

?>
