.class public Lcom/xiaomi/miglobaladsdk/nativead/e$a;
.super Ljava/lang/Object;
.source "RequestResultLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/miglobaladsdk/nativead/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:J

.field c:J

.field private d:Z

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/e$a;->a:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/e$a;->b:J

    iput-wide v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/e$a;->c:J

    iput-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/e$a;->a:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/e$a;->b:J

    return-void
.end method


# virtual methods
.method a(ZLjava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/e$a;->d:Z

    iput-object p2, p0, Lcom/xiaomi/miglobaladsdk/nativead/e$a;->e:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/e$a;->a:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/e$a;->c:J

    return-void
.end method

.method a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/e$a;->d:Z

    return v0
.end method
