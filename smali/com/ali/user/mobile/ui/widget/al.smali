.class Lcom/ali/user/mobile/ui/widget/al;
.super Ljava/lang/Object;
.source "AutoReadSmsCheckCode.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/ali/user/mobile/ui/widget/ak;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/ui/widget/ak;I[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/al;->f:Lcom/ali/user/mobile/ui/widget/ak;

    iput p2, p0, Lcom/ali/user/mobile/ui/widget/al;->a:I

    iput-object p3, p0, Lcom/ali/user/mobile/ui/widget/al;->b:[Ljava/lang/String;

    iput-object p4, p0, Lcom/ali/user/mobile/ui/widget/al;->c:Ljava/lang/String;

    iput p5, p0, Lcom/ali/user/mobile/ui/widget/al;->d:I

    iput-object p6, p0, Lcom/ali/user/mobile/ui/widget/al;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const-wide/16 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget v0, p0, Lcom/ali/user/mobile/ui/widget/al;->a:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v8, v0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/al;->f:Lcom/ali/user/mobile/ui/widget/ak;

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/al;->f:Lcom/ali/user/mobile/ui/widget/ak;

    invoke-static {v1}, Lcom/ali/user/mobile/ui/widget/ak;->a(Lcom/ali/user/mobile/ui/widget/ak;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/ui/widget/ak;->a(Lcom/ali/user/mobile/ui/widget/ak;Landroid/content/Context;)J

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/al;->f:Lcom/ali/user/mobile/ui/widget/ak;

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/al;->b:[Ljava/lang/String;

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/al;->c:Ljava/lang/String;

    iget v3, p0, Lcom/ali/user/mobile/ui/widget/al;->d:I

    iget-object v4, p0, Lcom/ali/user/mobile/ui/widget/al;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/ali/user/mobile/ui/widget/al;->f:Lcom/ali/user/mobile/ui/widget/ak;

    invoke-static {v5}, Lcom/ali/user/mobile/ui/widget/ak;->a(Lcom/ali/user/mobile/ui/widget/ak;)Landroid/content/Context;

    move-result-object v5

    invoke-static/range {v0 .. v9}, Lcom/ali/user/mobile/ui/widget/ak;->a(Lcom/ali/user/mobile/ui/widget/ak;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/al;->f:Lcom/ali/user/mobile/ui/widget/ak;

    invoke-static {v0, v10}, Lcom/ali/user/mobile/ui/widget/ak;->a(Lcom/ali/user/mobile/ui/widget/ak;Z)Z

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/al;->f:Lcom/ali/user/mobile/ui/widget/ak;

    invoke-static {v0, v11}, Lcom/ali/user/mobile/ui/widget/ak;->b(Lcom/ali/user/mobile/ui/widget/ak;Z)Z

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/al;->f:Lcom/ali/user/mobile/ui/widget/ak;

    invoke-static {v0, v12, v13}, Lcom/ali/user/mobile/ui/widget/ak;->a(Lcom/ali/user/mobile/ui/widget/ak;J)J

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Lcom/ali/user/mobile/ui/widget/ak;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/al;->f:Lcom/ali/user/mobile/ui/widget/ak;

    invoke-static {v0, v10}, Lcom/ali/user/mobile/ui/widget/ak;->a(Lcom/ali/user/mobile/ui/widget/ak;Z)Z

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/al;->f:Lcom/ali/user/mobile/ui/widget/ak;

    invoke-static {v0, v11}, Lcom/ali/user/mobile/ui/widget/ak;->b(Lcom/ali/user/mobile/ui/widget/ak;Z)Z

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/al;->f:Lcom/ali/user/mobile/ui/widget/ak;

    invoke-static {v0, v12, v13}, Lcom/ali/user/mobile/ui/widget/ak;->a(Lcom/ali/user/mobile/ui/widget/ak;J)J

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/al;->f:Lcom/ali/user/mobile/ui/widget/ak;

    invoke-static {v1, v10}, Lcom/ali/user/mobile/ui/widget/ak;->a(Lcom/ali/user/mobile/ui/widget/ak;Z)Z

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/al;->f:Lcom/ali/user/mobile/ui/widget/ak;

    invoke-static {v1, v11}, Lcom/ali/user/mobile/ui/widget/ak;->b(Lcom/ali/user/mobile/ui/widget/ak;Z)Z

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/al;->f:Lcom/ali/user/mobile/ui/widget/ak;

    invoke-static {v1, v12, v13}, Lcom/ali/user/mobile/ui/widget/ak;->a(Lcom/ali/user/mobile/ui/widget/ak;J)J

    throw v0
.end method
