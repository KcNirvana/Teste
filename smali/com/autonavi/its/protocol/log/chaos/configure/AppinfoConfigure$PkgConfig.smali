.class public Lcom/autonavi/its/protocol/log/chaos/configure/AppinfoConfigure$PkgConfig;
.super Ljava/lang/Object;
.source "AppinfoConfigure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/its/protocol/log/chaos/configure/AppinfoConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PkgConfig"
.end annotation


# instance fields
.field private mPkgFile:Ljava/lang/String;

.field private mPkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/log/chaos/configure/AppinfoConfigure$PkgConfig;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/autonavi/its/protocol/log/chaos/configure/AppinfoConfigure$PkgConfig;

    invoke-direct {v0}, Lcom/autonavi/its/protocol/log/chaos/configure/AppinfoConfigure$PkgConfig;-><init>()V

    const-string/jumbo v1, "pkgname"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/its/protocol/log/chaos/configure/AppinfoConfigure$PkgConfig;->setPkgName(Ljava/lang/String;)V

    const-string/jumbo v1, "pkgfile"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/its/protocol/log/chaos/configure/AppinfoConfigure$PkgConfig;->setPkgFile(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parserArray(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/log/chaos/configure/AppinfoConfigure$PkgConfig;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/its/protocol/log/chaos/configure/AppinfoConfigure$PkgConfig;->parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/log/chaos/configure/AppinfoConfigure$PkgConfig;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getPkgFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/log/chaos/configure/AppinfoConfigure$PkgConfig;->mPkgFile:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/log/chaos/configure/AppinfoConfigure$PkgConfig;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public setPkgFile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/log/chaos/configure/AppinfoConfigure$PkgConfig;->mPkgFile:Ljava/lang/String;

    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/log/chaos/configure/AppinfoConfigure$PkgConfig;->mPkgName:Ljava/lang/String;

    return-void
.end method
