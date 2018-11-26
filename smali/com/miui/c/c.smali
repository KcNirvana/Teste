.class public Lcom/miui/c/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private bcu:Z

.field private bcv:Z

.field private bcw:Ljava/lang/String;

.field private deeplinkUrl:Ljava/lang/String;

.field private landingPageUrl:Ljava/lang/String;

.field private packageName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/c/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/c/c;-><init>()V

    return-void
.end method


# virtual methods
.method public byY()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/c/c;->bcv:Z

    return v0
.end method

.method public byZ(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/c/c;->deeplinkUrl:Ljava/lang/String;

    return-void
.end method

.method public bza(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/c/c;->bcv:Z

    return-void
.end method

.method public bzb(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/c/c;->bcu:Z

    return-void
.end method

.method public getDeeplinkUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/c/c;->deeplinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLandingPageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/c/c;->landingPageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/c/c;->bcw:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/c/c;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public setLandingPageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/c/c;->landingPageUrl:Ljava/lang/String;

    return-void
.end method

.method public setLocalPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/c/c;->bcw:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/c/c;->packageName:Ljava/lang/String;

    return-void
.end method
