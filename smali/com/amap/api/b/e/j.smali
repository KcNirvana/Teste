.class public Lcom/amap/api/b/e/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/amap/api/b/e/i;

.field private b:Lcom/amap/api/b/e/g;


# direct methods
.method public constructor <init>(Lcom/amap/api/b/e/i;Lcom/amap/api/b/e/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/b/e/j;->a:Lcom/amap/api/b/e/i;

    iput-object p2, p0, Lcom/amap/api/b/e/j;->b:Lcom/amap/api/b/e/g;

    return-void
.end method


# virtual methods
.method public a()Lcom/amap/api/b/e/i;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/b/e/j;->a:Lcom/amap/api/b/e/i;

    return-object v0
.end method

.method public b()Lcom/amap/api/b/e/g;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/b/e/j;->b:Lcom/amap/api/b/e/g;

    return-object v0
.end method
