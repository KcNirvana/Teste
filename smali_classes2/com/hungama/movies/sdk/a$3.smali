.class Lcom/hungama/movies/sdk/a$3;
.super Ljava/lang/Object;
.source "HungamaPlayer.java"

# interfaces
.implements Lcom/hungama/movies/sdk/d/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hungama/movies/sdk/a;->h(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hungama/movies/sdk/a;


# direct methods
.method constructor <init>(Lcom/hungama/movies/sdk/a;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/movies/sdk/a$3;->a:Lcom/hungama/movies/sdk/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hungama/movies/sdk/Utils/WebServiceError;)V
    .locals 3

    iget-object v0, p0, Lcom/hungama/movies/sdk/a$3;->a:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v0, p1}, Lcom/hungama/movies/sdk/a;->a(Lcom/hungama/movies/sdk/Utils/WebServiceError;)V

    :try_start_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/a$3;->a:Lcom/hungama/movies/sdk/a;

    invoke-virtual {p1}, Lcom/hungama/movies/sdk/Utils/WebServiceError;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a;->a(Lcom/hungama/movies/sdk/a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/a$3;->a:Lcom/hungama/movies/sdk/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hungama/movies/sdk/Utils/WebServiceError;->getErrorCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "-2"

    invoke-static {v0, p1, v1}, Lcom/hungama/movies/sdk/a;->a(Lcom/hungama/movies/sdk/a;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hungama/movies/sdk/a$3;->a:Lcom/hungama/movies/sdk/a;

    iget-object p1, p1, Lcom/hungama/movies/sdk/a;->ab:Lcom/hungama/movies/sdk/d/a;

    invoke-virtual {p1}, Lcom/hungama/movies/sdk/d/a;->b()V

    iget-object p1, p0, Lcom/hungama/movies/sdk/a$3;->a:Lcom/hungama/movies/sdk/a;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/hungama/movies/sdk/a;->ab:Lcom/hungama/movies/sdk/d/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/a$3;->a:Lcom/hungama/movies/sdk/a;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    invoke-static {p1, v1, v2, v3, v4}, Lcom/hungama/movies/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hungama/movies/sdk/Model/Playback;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/hungama/movies/sdk/a;->a(Lcom/hungama/movies/sdk/Model/Playback;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/hungama/movies/sdk/a$3;->a:Lcom/hungama/movies/sdk/a;

    iget-object p1, p1, Lcom/hungama/movies/sdk/a;->ab:Lcom/hungama/movies/sdk/d/a;

    invoke-virtual {p1}, Lcom/hungama/movies/sdk/d/a;->b()V

    iget-object p1, p0, Lcom/hungama/movies/sdk/a$3;->a:Lcom/hungama/movies/sdk/a;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/hungama/movies/sdk/a;->ab:Lcom/hungama/movies/sdk/d/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
