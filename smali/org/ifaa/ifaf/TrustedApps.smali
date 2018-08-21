.class public Lorg/ifaa/ifaf/TrustedApps;
.super Ljava/lang/Object;
.source "TrustedApps.java"


# instance fields
.field private ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private version:Lorg/ifaa/ifaf/Version;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ifaa/ifaf/TrustedApps;->ids:Ljava/util/List;

    return-object v0
.end method

.method public getVersion()Lorg/ifaa/ifaf/Version;
    .locals 1

    iget-object v0, p0, Lorg/ifaa/ifaf/TrustedApps;->version:Lorg/ifaa/ifaf/Version;

    return-object v0
.end method

.method public setIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ifaa/ifaf/TrustedApps;->ids:Ljava/util/List;

    return-void
.end method

.method public setVersion(Lorg/ifaa/ifaf/Version;)V
    .locals 0

    iput-object p1, p0, Lorg/ifaa/ifaf/TrustedApps;->version:Lorg/ifaa/ifaf/Version;

    return-void
.end method
