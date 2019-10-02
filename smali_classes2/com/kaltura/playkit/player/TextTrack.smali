.class public Lcom/kaltura/playkit/player/TextTrack;
.super Lcom/kaltura/playkit/player/BaseTrack;
.source "TextTrack.java"


# instance fields
.field private label:Ljava/lang/String;

.field private language:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p4, v0}, Lcom/kaltura/playkit/player/BaseTrack;-><init>(Ljava/lang/String;IZ)V

    iput-object p3, p0, Lcom/kaltura/playkit/player/TextTrack;->label:Ljava/lang/String;

    iput-object p2, p0, Lcom/kaltura/playkit/player/TextTrack;->language:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/player/TextTrack;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/player/TextTrack;->language:Ljava/lang/String;

    return-object v0
.end method
