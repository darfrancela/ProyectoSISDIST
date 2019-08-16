package com.example.votaciones.Api;

import com.example.votaciones.Model.CandidatoModel;
import com.example.votaciones.Model.EstudianteModel;
import com.example.votaciones.Model.UsuariosModel;
import com.example.votaciones.Model.VotacionesModel;
import com.example.votaciones.Model.VotosModel;

import java.util.List;

import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Path;

public interface ApiInterface {
    @GET("votaciones")
    Call<List<VotacionesModel>> GetVotaciones();

    @GET("usuarios")
    Call<List<UsuariosModel>> GetUsers();

    @GET("candidatos")
    Call<List<CandidatoModel>> GetCandidatos();

    @GET("estudiantes")
    Call<List<EstudianteModel>> GetEstudiantes();

    @POST("login")
    Call<UsuariosModel> Login(@Body UsuariosModel usuariosModel);

    @PUT("candidatos/{id}")
    Call<CandidatoModel> PutCandidato(@Path("id") String id,@Body CandidatoModel candidatoModel);

    @POST("votos")
    Call<VotosModel> PostVotosUser(@Body VotosModel votosModel);

   /* @PUT("mercados/{id}")
    Call<MarketModel> update(@Path("id") String id,@Body MarketModel marketModel);

    @DELETE("mercados/{id}")
    Call<MarketModel> deleteMarket(@Path("id")String id);*/
}
