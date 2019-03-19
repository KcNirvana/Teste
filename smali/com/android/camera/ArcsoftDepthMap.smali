.class public Lcom/android/camera/ArcsoftDepthMap;
.super Ljava/lang/Object;
.source "ArcsoftDepthMap.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDepthMapHeader:[B

.field private mDepthMapOriginalData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/ArcsoftDepthMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ArcsoftDepthMap;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 4

    const/16 v3, 0x80

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/camera/ArcsoftDepthMap;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ArcsoftDepthMap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/camera/ArcsoftDepthMap;->getHeaderTag([B)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; 0x80 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/camera/ArcsoftDepthMap;->getHeaderTag([B)I

    move-result v0

    if-eq v0, v3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not a legal depth format!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/android/camera/ArcsoftDepthMap;->mDepthMapOriginalData:[B

    invoke-virtual {p0}, Lcom/android/camera/ArcsoftDepthMap;->getDepthMapHeader()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ArcsoftDepthMap;->mDepthMapHeader:[B

    return-void
.end method

.method private static getBytes([BII)[B
    .locals 4

    const/4 v2, 0x0

    if-lez p2, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WRONG ARGUMENT: from ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", bytesLength = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    array-length v1, p0

    sub-int/2addr v1, p1

    if-gt p2, v1, :cond_0

    new-array v0, p2, [B

    invoke-static {p0, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v0
.end method

.method private static getHeaderTag([B)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/android/camera/ArcsoftDepthMap;->getBytes([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ArcsoftDepthMap;->getInteger([B)I

    move-result v0

    return v0
.end method

.method private static getInteger([B)I
    .locals 5

    const/4 v4, 0x4

    array-length v2, p0

    if-eq v2, v4, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "bytes can not covert to a integer value!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public getBlurLevel()I
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ArcsoftDepthMap;->mDepthMapHeader:[B

    const/16 v1, 0x10

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/android/camera/ArcsoftDepthMap;->getBytes([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ArcsoftDepthMap;->getInteger([B)I

    move-result v0

    return v0
.end method

.method public getDepthMapData()[B
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ArcsoftDepthMap;->mDepthMapOriginalData:[B

    invoke-virtual {p0}, Lcom/android/camera/ArcsoftDepthMap;->getDepthMapLength()I

    move-result v1

    const/16 v2, 0x98

    invoke-static {v0, v2, v1}, Lcom/android/camera/ArcsoftDepthMap;->getBytes([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public getDepthMapHeader()[B
    .locals 3

    const/4 v2, 0x4

    iget-object v1, p0, Lcom/android/camera/ArcsoftDepthMap;->mDepthMapOriginalData:[B

    invoke-static {v1, v2, v2}, Lcom/android/camera/ArcsoftDepthMap;->getBytes([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ArcsoftDepthMap;->getInteger([B)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ArcsoftDepthMap;->mDepthMapOriginalData:[B

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/camera/ArcsoftDepthMap;->getBytes([BII)[B

    move-result-object v1

    return-object v1
.end method

.method public getDepthMapLength()I
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ArcsoftDepthMap;->mDepthMapHeader:[B

    const/16 v1, 0x94

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/android/camera/ArcsoftDepthMap;->getBytes([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ArcsoftDepthMap;->getInteger([B)I

    move-result v0

    return v0
.end method

.method public getFocusPoint()Landroid/graphics/Point;
    .locals 5

    const/4 v4, 0x4

    iget-object v2, p0, Lcom/android/camera/ArcsoftDepthMap;->mDepthMapHeader:[B

    const/16 v3, 0x8

    invoke-static {v2, v3, v4}, Lcom/android/camera/ArcsoftDepthMap;->getBytes([BII)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/ArcsoftDepthMap;->getInteger([B)I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/ArcsoftDepthMap;->mDepthMapHeader:[B

    const/16 v3, 0xc

    invoke-static {v2, v3, v4}, Lcom/android/camera/ArcsoftDepthMap;->getBytes([BII)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/ArcsoftDepthMap;->getInteger([B)I

    move-result v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method
