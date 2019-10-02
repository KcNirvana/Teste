.class Lcom/ooyala/pulse/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ooyala/pulse/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/ooyala/pulse/d;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/ooyala/pulse/d;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/ooyala/pulse/d;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/ooyala/pulse/d;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ooyala/pulse/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/ooyala/pulse/d;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-class v1, Lcom/ooyala/pulse/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/ooyala/pulse/d;

    iget-object v1, p0, Lcom/ooyala/pulse/d;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/ooyala/pulse/d;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/ooyala/pulse/d;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/ooyala/pulse/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :goto_0
    return v0

    :cond_3
    iget-object v1, p0, Lcom/ooyala/pulse/d;->a:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object p1, p1, Lcom/ooyala/pulse/d;->a:Ljava/lang/String;

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/ooyala/pulse/d;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/ooyala/pulse/d;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :goto_1
    return v0

    :cond_5
    const/4 p1, 0x1

    return p1
.end method
