.class Lcom/xiaomi/a/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Lcom/xiaomi/a/i;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/a/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/a/e$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/a/e$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/a/e$a;->d:Lcom/xiaomi/a/i;

    iput-object p1, p0, Lcom/xiaomi/a/e$a;->a:Ljava/lang/String;

    return-void
.end method
