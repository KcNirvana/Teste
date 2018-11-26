.class public Lcom/miui/gamebooster/a/v;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private eM:I

.field private isLike:Z

.field private mViewPointId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/a/v;->mViewPointId:Ljava/lang/String;

    iput p2, p0, Lcom/miui/gamebooster/a/v;->eM:I

    iput-boolean p3, p0, Lcom/miui/gamebooster/a/v;->isLike:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IZLcom/miui/gamebooster/a/v;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gamebooster/a/v;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method
