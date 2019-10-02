.class public abstract Lcom/kaltura/playkit/player/BaseTrack;
.super Ljava/lang/Object;
.source "BaseTrack.java"


# instance fields
.field private isAdaptive:Z

.field private selectionFlag:I

.field private uniqueId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kaltura/playkit/player/BaseTrack;->uniqueId:Ljava/lang/String;

    iput p2, p0, Lcom/kaltura/playkit/player/BaseTrack;->selectionFlag:I

    iput-boolean p3, p0, Lcom/kaltura/playkit/player/BaseTrack;->isAdaptive:Z

    return-void
.end method


# virtual methods
.method getSelectionFlag()I
    .locals 1

    iget v0, p0, Lcom/kaltura/playkit/player/BaseTrack;->selectionFlag:I

    return v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/BaseTrack;->uniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public isAdaptive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kaltura/playkit/player/BaseTrack;->isAdaptive:Z

    return v0
.end method
