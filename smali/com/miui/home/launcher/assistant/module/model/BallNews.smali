.class public Lcom/miui/home/launcher/assistant/module/model/BallNews;
.super Ljava/lang/Object;
.source "BallNews.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6efa7268f59e3f47L


# instance fields
.field private base64Encode:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public img_url:Ljava/lang/String;

.field public publish_time:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBase64Encode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/model/BallNews;->base64Encode:Ljava/lang/String;

    return-object v0
.end method

.method public setBase64Encode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/model/BallNews;->base64Encode:Ljava/lang/String;

    return-void
.end method
