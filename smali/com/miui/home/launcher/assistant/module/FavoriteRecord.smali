.class public Lcom/miui/home/launcher/assistant/module/FavoriteRecord;
.super Lcom/miui/home/launcher/assistant/module/model/FavBase;
.source "FavoriteRecord.java"


# instance fields
.field private category:Ljava/lang/String;

.field private ctime:Ljava/lang/String;

.field private isPartner:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/module/model/FavBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/FavoriteRecord;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCtime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/FavoriteRecord;->ctime:Ljava/lang/String;

    return-object v0
.end method

.method public getIsPartner()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/FavoriteRecord;->isPartner:Ljava/lang/String;

    return-object v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/FavoriteRecord;->category:Ljava/lang/String;

    return-void
.end method

.method public setCtime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/FavoriteRecord;->ctime:Ljava/lang/String;

    return-void
.end method

.method public setIsPartner(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/FavoriteRecord;->isPartner:Ljava/lang/String;

    return-void
.end method
