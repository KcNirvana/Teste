.class Lcom/hungama/movies/sdk/d/a$3;
.super Landroid/os/Handler;
.source "CommunicationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hungama/movies/sdk/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hungama/movies/sdk/d/a;


# direct methods
.method constructor <init>(Lcom/hungama/movies/sdk/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/movies/sdk/d/a$3;->a:Lcom/hungama/movies/sdk/d/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "ErrorMsg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/hungama/movies/sdk/d/a$3;->a:Lcom/hungama/movies/sdk/d/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/d/a;->f:Lcom/hungama/movies/sdk/Utils/WebServiceError;

    invoke-virtual {v0, p1}, Lcom/hungama/movies/sdk/Utils/WebServiceError;->setDescription(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hungama/movies/sdk/d/a$3;->a:Lcom/hungama/movies/sdk/d/a;

    iget-object p1, p1, Lcom/hungama/movies/sdk/d/a;->f:Lcom/hungama/movies/sdk/Utils/WebServiceError;

    iget-object v0, p0, Lcom/hungama/movies/sdk/d/a$3;->a:Lcom/hungama/movies/sdk/d/a;

    iget v0, v0, Lcom/hungama/movies/sdk/d/a;->d:I

    invoke-virtual {p1, v0}, Lcom/hungama/movies/sdk/Utils/WebServiceError;->setErrorCode(I)V

    iget-object p1, p0, Lcom/hungama/movies/sdk/d/a$3;->a:Lcom/hungama/movies/sdk/d/a;

    iget-object p1, p1, Lcom/hungama/movies/sdk/d/a;->b:Lcom/hungama/movies/sdk/d/b;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hungama/movies/sdk/d/a$3;->a:Lcom/hungama/movies/sdk/d/a;

    iget-object p1, p1, Lcom/hungama/movies/sdk/d/a;->b:Lcom/hungama/movies/sdk/d/b;

    iget-object v0, p0, Lcom/hungama/movies/sdk/d/a$3;->a:Lcom/hungama/movies/sdk/d/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/d/a;->f:Lcom/hungama/movies/sdk/Utils/WebServiceError;

    invoke-interface {p1, v0}, Lcom/hungama/movies/sdk/d/b;->a(Lcom/hungama/movies/sdk/Utils/WebServiceError;)V

    :cond_0
    return-void
.end method
