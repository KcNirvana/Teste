.class public Lcom/kaltura/playkit/player/LoadControlBuffers;
.super Ljava/lang/Object;
.source "LoadControlBuffers.java"


# instance fields
.field private maxPlayerBufferMs:I

.field private minBufferAfterInteractionMs:I

.field private minBufferAfterReBufferMs:I

.field private minPlayerBufferMs:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3a98

    iput v0, p0, Lcom/kaltura/playkit/player/LoadControlBuffers;->minPlayerBufferMs:I

    const v0, 0xc350

    iput v0, p0, Lcom/kaltura/playkit/player/LoadControlBuffers;->maxPlayerBufferMs:I

    const/16 v0, 0x9c4

    iput v0, p0, Lcom/kaltura/playkit/player/LoadControlBuffers;->minBufferAfterInteractionMs:I

    const/16 v0, 0x1388

    iput v0, p0, Lcom/kaltura/playkit/player/LoadControlBuffers;->minBufferAfterReBufferMs:I

    return-void
.end method


# virtual methods
.method public getMaxPlayerBufferMs()I
    .locals 2

    iget v0, p0, Lcom/kaltura/playkit/player/LoadControlBuffers;->maxPlayerBufferMs:I

    iget v1, p0, Lcom/kaltura/playkit/player/LoadControlBuffers;->minPlayerBufferMs:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/kaltura/playkit/player/LoadControlBuffers;->minPlayerBufferMs:I

    return v0

    :cond_0
    iget v0, p0, Lcom/kaltura/playkit/player/LoadControlBuffers;->maxPlayerBufferMs:I

    return v0
.end method

.method public getMinBufferAfterInteractionMs()I
    .locals 2

    iget v0, p0, Lcom/kaltura/playkit/player/LoadControlBuffers;->minPlayerBufferMs:I

    iget v1, p0, Lcom/kaltura/playkit/player/LoadControlBuffers;->minBufferAfterInteractionMs:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/kaltura/playkit/player/LoadControlBuffers;->minPlayerBufferMs:I

    return v0

    :cond_0
    iget v0, p0, Lcom/kaltura/playkit/player/LoadControlBuffers;->minBufferAfterInteractionMs:I

    return v0
.end method

.method public getMinBufferAfterReBufferMs()I
    .locals 2

    iget v0, p0, Lcom/kaltura/playkit/player/LoadControlBuffers;->minPlayerBufferMs:I

    iget v1, p0, Lcom/kaltura/playkit/player/LoadControlBuffers;->minBufferAfterReBufferMs:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/kaltura/playkit/player/LoadControlBuffers;->minPlayerBufferMs:I

    return v0

    :cond_0
    iget v0, p0, Lcom/kaltura/playkit/player/LoadControlBuffers;->minBufferAfterReBufferMs:I

    return v0
.end method

.method public getMinPlayerBufferMs()I
    .locals 1

    iget v0, p0, Lcom/kaltura/playkit/player/LoadControlBuffers;->minPlayerBufferMs:I

    return v0
.end method

.method public setMaxPlayerBufferMs(I)Lcom/kaltura/playkit/player/LoadControlBuffers;
    .locals 0

    iput p1, p0, Lcom/kaltura/playkit/player/LoadControlBuffers;->maxPlayerBufferMs:I

    return-object p0
.end method

.method public setMinBufferAfterInteractionMs(I)Lcom/kaltura/playkit/player/LoadControlBuffers;
    .locals 0

    iput p1, p0, Lcom/kaltura/playkit/player/LoadControlBuffers;->minBufferAfterInteractionMs:I

    return-object p0
.end method

.method public setMinBufferAfterReBufferMs(I)Lcom/kaltura/playkit/player/LoadControlBuffers;
    .locals 0

    iput p1, p0, Lcom/kaltura/playkit/player/LoadControlBuffers;->minBufferAfterReBufferMs:I

    return-object p0
.end method

.method public setMinPlayerBufferMs(I)Lcom/kaltura/playkit/player/LoadControlBuffers;
    .locals 0

    iput p1, p0, Lcom/kaltura/playkit/player/LoadControlBuffers;->minPlayerBufferMs:I

    return-object p0
.end method
