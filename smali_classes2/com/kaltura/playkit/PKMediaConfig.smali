.class public Lcom/kaltura/playkit/PKMediaConfig;
.super Ljava/lang/Object;
.source "PKMediaConfig.java"


# instance fields
.field private mediaEntry:Lcom/kaltura/playkit/PKMediaEntry;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private startPosition:Ljava/lang/Long;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMediaEntry()Lcom/kaltura/playkit/PKMediaEntry;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/PKMediaConfig;->mediaEntry:Lcom/kaltura/playkit/PKMediaEntry;

    return-object v0
.end method

.method public getStartPosition()Ljava/lang/Long;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/PKMediaConfig;->startPosition:Ljava/lang/Long;

    return-object v0
.end method

.method public setMediaEntry(Lcom/kaltura/playkit/PKMediaEntry;)Lcom/kaltura/playkit/PKMediaConfig;
    .locals 0
    .param p1    # Lcom/kaltura/playkit/PKMediaEntry;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/kaltura/playkit/PKMediaConfig;->mediaEntry:Lcom/kaltura/playkit/PKMediaEntry;

    return-object p0
.end method

.method public setStartPosition(Ljava/lang/Long;)Lcom/kaltura/playkit/PKMediaConfig;
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/kaltura/playkit/PKMediaConfig;->startPosition:Ljava/lang/Long;

    return-object p0
.end method
