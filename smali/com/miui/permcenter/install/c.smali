.class public Lcom/miui/permcenter/install/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mPackages:Ljava/util/List;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Rw(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/install/c;->mPackages:Ljava/util/List;

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/install/c;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackages()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/install/c;->mPackages:Ljava/util/List;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/install/c;->name:Ljava/lang/String;

    return-void
.end method
