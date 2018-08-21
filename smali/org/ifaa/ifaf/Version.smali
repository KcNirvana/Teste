.class public Lorg/ifaa/ifaf/Version;
.super Ljava/lang/Object;
.source "Version.java"


# instance fields
.field private mj:I

.field private mn:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/ifaa/ifaf/Version;->mj:I

    iput v0, p0, Lorg/ifaa/ifaf/Version;->mn:I

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lorg/ifaa/ifaf/Version;
    .locals 2

    new-instance v0, Lorg/ifaa/ifaf/Version;

    invoke-direct {v0}, Lorg/ifaa/ifaf/Version;-><init>()V

    :try_start_0
    const-string/jumbo v1, "mj"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/ifaa/ifaf/Version;->setMj(I)V

    const-string/jumbo v1, "mn"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/ifaa/ifaf/Version;->setMn(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getMj()I
    .locals 1

    iget v0, p0, Lorg/ifaa/ifaf/Version;->mj:I

    return v0
.end method

.method public getMn()I
    .locals 1

    iget v0, p0, Lorg/ifaa/ifaf/Version;->mn:I

    return v0
.end method

.method public setMj(I)V
    .locals 0

    iput p1, p0, Lorg/ifaa/ifaf/Version;->mj:I

    return-void
.end method

.method public setMn(I)V
    .locals 0

    iput p1, p0, Lorg/ifaa/ifaf/Version;->mn:I

    return-void
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "mj"

    iget v2, p0, Lorg/ifaa/ifaf/Version;->mj:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "mn"

    iget v2, p0, Lorg/ifaa/ifaf/Version;->mn:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method
