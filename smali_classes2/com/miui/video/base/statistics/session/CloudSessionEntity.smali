.class public Lcom/miui/video/base/statistics/session/CloudSessionEntity;
.super Ljava/lang/Object;
.source "CloudSessionEntity.java"


# instance fields
.field public app:Ljava/lang/String;

.field public imeid:Ljava/lang/String;

.field public page_actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/base/statistics/session/CloudPageAction;",
            ">;"
        }
    .end annotation
.end field

.field public path:Ljava/lang/String;

.field public traceid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
