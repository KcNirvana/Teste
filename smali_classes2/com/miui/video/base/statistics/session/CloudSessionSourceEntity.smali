.class public Lcom/miui/video/base/statistics/session/CloudSessionSourceEntity;
.super Ljava/lang/Object;
.source "CloudSessionSourceEntity.java"


# instance fields
.field public channel:Ljava/lang/String;

.field public linkEntity:Lcom/miui/video/framework/uri/LinkEntity;

.field public type:I


# direct methods
.method public constructor <init>(Lcom/miui/video/framework/uri/LinkEntity;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/base/statistics/session/CloudSessionSourceEntity;->linkEntity:Lcom/miui/video/framework/uri/LinkEntity;

    iput p2, p0, Lcom/miui/video/base/statistics/session/CloudSessionSourceEntity;->type:I

    iput-object p3, p0, Lcom/miui/video/base/statistics/session/CloudSessionSourceEntity;->channel:Ljava/lang/String;

    return-void
.end method
