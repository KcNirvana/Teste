.class public Lcom/android/camera/IntArray;
.super Ljava/lang/Object;
.source "IntArray.java"


# instance fields
.field private mData:[I

.field private mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/camera/IntArray;->mData:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/IntArray;->mSize:I

    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/camera/IntArray;->mData:[I

    array-length v1, v1

    iget v2, p0, Lcom/android/camera/IntArray;->mSize:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/IntArray;->mSize:I

    iget v2, p0, Lcom/android/camera/IntArray;->mSize:I

    add-int/2addr v1, v2

    new-array v0, v1, [I

    iget-object v1, p0, Lcom/android/camera/IntArray;->mData:[I

    iget v2, p0, Lcom/android/camera/IntArray;->mSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    iput-object v0, p0, Lcom/android/camera/IntArray;->mData:[I

    :cond_0
    iget-object v1, p0, Lcom/android/camera/IntArray;->mData:[I

    iget v2, p0, Lcom/android/camera/IntArray;->mSize:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/camera/IntArray;->mSize:I

    aput p1, v1, v2

    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/android/camera/IntArray;->mSize:I

    return v0
.end method

.method public toArray([I)[I
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    iget v1, p0, Lcom/android/camera/IntArray;->mSize:I

    if-ge v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/camera/IntArray;->mSize:I

    new-array p1, v0, [I

    :cond_1
    iget-object v0, p0, Lcom/android/camera/IntArray;->mData:[I

    iget v1, p0, Lcom/android/camera/IntArray;->mSize:I

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy([II[III)V

    return-object p1
.end method
