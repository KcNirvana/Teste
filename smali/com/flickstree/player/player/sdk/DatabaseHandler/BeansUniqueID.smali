.class public Lcom/flickstree/player/player/sdk/DatabaseHandler/BeansUniqueID;
.super Ljava/lang/Object;
.source "BeansUniqueID.java"


# instance fields
.field private id:Ljava/lang/String;

.field private liked:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/DatabaseHandler/BeansUniqueID;->liked:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/DatabaseHandler/BeansUniqueID;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLiked()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/DatabaseHandler/BeansUniqueID;->liked:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/DatabaseHandler/BeansUniqueID;->id:Ljava/lang/String;

    return-void
.end method

.method public setLiked(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/DatabaseHandler/BeansUniqueID;->liked:Ljava/lang/String;

    return-void
.end method
