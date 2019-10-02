.class public Lcom/miui/video/base/statistics/event/CustomEventEntity$Buidler;
.super Ljava/lang/Object;
.source "CustomEventEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/base/statistics/event/CustomEventEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Buidler"
.end annotation


# instance fields
.field private mLinkBuilder:Landroid/net/Uri$Builder;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "mv://"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "uievent"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/base/statistics/event/CustomEventEntity$Buidler;->mLinkBuilder:Landroid/net/Uri$Builder;

    return-void
.end method


# virtual methods
.method public addParamer(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/event/CustomEventEntity$Buidler;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/CustomEventEntity$Buidler;->mLinkBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-object p0
.end method

.method public toEntity()Lcom/miui/video/base/statistics/event/CustomEventEntity;
    .locals 3

    new-instance v0, Lcom/miui/video/base/statistics/event/CustomEventEntity;

    iget-object v1, p0, Lcom/miui/video/base/statistics/event/CustomEventEntity$Buidler;->mLinkBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/video/base/statistics/event/CustomEventEntity;-><init>(Ljava/lang/String;Lcom/miui/video/base/statistics/event/CustomEventEntity$1;)V

    return-object v0
.end method
