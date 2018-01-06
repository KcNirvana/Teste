.class public Lcom/xiaomi/mistatistic/sdk/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mistatistic/sdk/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/Throwable;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/mistatistic/sdk/h$a;->a:Ljava/lang/Throwable;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/k;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/h$a;->b:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/k;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/h$a;->c:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/k;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/h$a;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaomi/mistatistic/sdk/h$a;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/h$a;->a:Ljava/lang/Throwable;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/k;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/h$a;->b:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/k;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/h$a;->c:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/k;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/h$a;->d:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/h$a;->e:Ljava/lang/String;

    return-void
.end method
