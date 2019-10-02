.class final Lcom/ooyala/adtech/a;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field final a:Lcom/ooyala/adtech/Error;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/ooyala/pulse/Error$Domain;->CORE:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/ooyala/adtech/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/ooyala/adtech/Error;)V
    .locals 1

    invoke-virtual {p1}, Lcom/ooyala/adtech/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ooyala/adtech/a;->a:Lcom/ooyala/adtech/Error;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/ooyala/adtech/Error;

    invoke-direct {v0, p1, p2, p3}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ooyala/adtech/a;-><init>(Lcom/ooyala/adtech/Error;)V

    return-void
.end method
