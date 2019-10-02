.class Lcom/xiaomi/miglobaladsdk/a/b$b;
.super Ljava/lang/Object;
.source "ConfigRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/miglobaladsdk/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/xiaomi/miglobaladsdk/a/b$a;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/xiaomi/miglobaladsdk/a/b$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/a/b$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/miglobaladsdk/a/b$b;->b:Lcom/xiaomi/miglobaladsdk/a/b$a;

    return-void
.end method
