.class public Lcom/baidu/mapapi/search/ext/model/TrafficInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:D

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLength()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/mapapi/search/ext/model/TrafficInfo;->a:D

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/search/ext/model/TrafficInfo;->b:I

    return v0
.end method

.method public setLength(D)V
    .locals 1

    iput-wide p1, p0, Lcom/baidu/mapapi/search/ext/model/TrafficInfo;->a:D

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/mapapi/search/ext/model/TrafficInfo;->b:I

    return-void
.end method
