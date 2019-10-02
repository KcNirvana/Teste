.class public Lcom/miui/video/biz/pgc/data/usecase/SubscribeUserCase$Entity;
.super Ljava/lang/Object;
.source "SubscribeUserCase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/pgc/data/usecase/SubscribeUserCase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entity"
.end annotation


# instance fields
.field public authorId:Ljava/lang/String;

.field public subscribe:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/pgc/data/usecase/SubscribeUserCase$Entity;->authorId:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/miui/video/biz/pgc/data/usecase/SubscribeUserCase$Entity;->subscribe:Z

    return-void
.end method
