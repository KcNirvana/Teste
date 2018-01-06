.class public Lcom/amap/api/col/am$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/am;

.field private final b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/amap/api/col/am;Lcom/amap/api/col/am;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/am$c;->a:Lcom/amap/api/col/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/amap/api/col/am$c;->b:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/col/am;Lcom/amap/api/col/am;Landroid/content/Context;Lcom/amap/api/col/an;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/amap/api/col/am$c;-><init>(Lcom/amap/api/col/am;Lcom/amap/api/col/am;Landroid/content/Context;)V

    return-void
.end method
