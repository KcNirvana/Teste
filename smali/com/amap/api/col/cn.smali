.class public Lcom/amap/api/col/cn;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/cn$j;,
        Lcom/amap/api/col/cn$k;,
        Lcom/amap/api/col/cn$l;,
        Lcom/amap/api/col/cn$c;,
        Lcom/amap/api/col/cn$d;,
        Lcom/amap/api/col/cn$f;,
        Lcom/amap/api/col/cn$i;,
        Lcom/amap/api/col/cn$e;,
        Lcom/amap/api/col/cn$h;,
        Lcom/amap/api/col/cn$g;,
        Lcom/amap/api/col/cn$b;,
        Lcom/amap/api/col/cn$a;
    }
.end annotation


# static fields
.field private static a:Lcom/amap/api/col/cn;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public static declared-synchronized a()Lcom/amap/api/col/cn;
    .locals 3

    const-class v1, Lcom/amap/api/col/cn;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/col/cn;->a:Lcom/amap/api/col/cn;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v0, v2, :cond_2

    :cond_0
    new-instance v0, Lcom/amap/api/col/cn;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/amap/api/col/cn;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/amap/api/col/cn;->a:Lcom/amap/api/col/cn;

    :cond_1
    :goto_0
    sget-object v0, Lcom/amap/api/col/cn;->a:Lcom/amap/api/col/cn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_2
    :try_start_1
    new-instance v0, Lcom/amap/api/col/cn;

    invoke-direct {v0}, Lcom/amap/api/col/cn;-><init>()V

    sput-object v0, Lcom/amap/api/col/cn;->a:Lcom/amap/api/col/cn;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/os/Message;)V
    .locals 4

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/b/m/a$a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "shareurlkey"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {v0, v2, v1}, Lcom/amap/api/b/m/a$a;->a(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    invoke-interface {v0, v2, v1}, Lcom/amap/api/b/m/a$a;->d(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_2
    invoke-interface {v0, v2, v1}, Lcom/amap/api/b/m/a$a;->f(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_3
    invoke-interface {v0, v2, v1}, Lcom/amap/api/b/m/a$a;->e(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_4
    invoke-interface {v0, v2, v1}, Lcom/amap/api/b/m/a$a;->b(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_5
    invoke-interface {v0, v2, v1}, Lcom/amap/api/b/m/a$a;->c(Ljava/lang/String;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x44c
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private b(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/b/h/a$a;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v2}, Lcom/amap/api/b/h/a$a;->b(I)V

    goto :goto_0
.end method

.method private c(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/col/cn$f;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, v0, Lcom/amap/api/col/cn$f;->a:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_2

    iget-object v0, v0, Lcom/amap/api/col/cn$f;->b:Lcom/amap/api/b/h/b;

    move-object v1, v0

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/b/h/a$a;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v1, v3}, Lcom/amap/api/b/h/a$a;->a(Lcom/amap/api/b/h/b;I)V

    goto :goto_0
.end method

.method private d(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/b/h/a$a;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v2}, Lcom/amap/api/b/h/a$a;->a(I)V

    goto :goto_0
.end method

.method private e(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/col/cn$b;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, v0, Lcom/amap/api/col/cn$b;->b:Lcom/amap/api/b/a/h$a;

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_2

    iget-object v0, v0, Lcom/amap/api/col/cn$b;->a:Lcom/amap/api/b/a/g;

    :goto_1
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-interface {v2, v0, v1}, Lcom/amap/api/b/a/h$a;->a(Lcom/amap/api/b/a/g;I)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private f(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x258

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/col/cn$h;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Lcom/amap/api/col/cn$h;->b:Lcom/amap/api/b/i/h$a;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "errorCode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v0, v0, Lcom/amap/api/col/cn$h;->a:Lcom/amap/api/b/i/g;

    invoke-interface {v1, v0, v2}, Lcom/amap/api/b/i/h$a;->a(Lcom/amap/api/b/i/g;I)V

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x25a

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/col/cn$g;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/amap/api/col/cn$g;->b:Lcom/amap/api/b/i/h$a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "errorCode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v0, v0, Lcom/amap/api/col/cn$g;->a:Lcom/amap/api/b/c/d;

    invoke-interface {v1, v0, v2}, Lcom/amap/api/b/i/h$a;->a(Lcom/amap/api/b/c/d;I)V

    goto :goto_0
.end method

.method private g(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/b/f/a$a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v1, v2}, Lcom/amap/api/b/f/a$a;->a(Ljava/util/List;I)V

    goto :goto_0
.end method

.method private h(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/col/cn$i;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Lcom/amap/api/col/cn$i;->b:Lcom/amap/api/b/e/f$a;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/amap/api/col/cn$i;->a:Lcom/amap/api/b/e/j;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v0, v2}, Lcom/amap/api/b/e/f$a;->a(Lcom/amap/api/b/e/j;I)V

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/col/cn$e;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/amap/api/col/cn$e;->b:Lcom/amap/api/b/e/f$a;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/amap/api/col/cn$e;->a:Lcom/amap/api/b/e/e;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v0, v2}, Lcom/amap/api/b/e/f$a;->a(Lcom/amap/api/b/e/e;I)V

    goto :goto_0
.end method

.method private i(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/b/d/e$a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amap/api/b/d/c;

    invoke-interface {v0, v1}, Lcom/amap/api/b/d/e$a;->a(Lcom/amap/api/b/d/c;)V

    goto :goto_0
.end method

.method private j(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/col/cn$a;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, v0, Lcom/amap/api/col/cn$a;->b:Lcom/amap/api/b/a/d$a;

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_2

    iget-object v0, v0, Lcom/amap/api/col/cn$a;->a:Lcom/amap/api/b/a/c;

    :goto_1
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-interface {v2, v0, v1}, Lcom/amap/api/b/a/d$a;->a(Lcom/amap/api/b/a/c;I)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private k(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/b/k/am$d;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "errorCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "result"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amap/api/b/k/c;

    invoke-interface {v0, v1, v2}, Lcom/amap/api/b/k/am$d;->a(Lcom/amap/api/b/k/c;I)V

    goto :goto_0

    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "errorCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "result"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amap/api/b/k/m;

    invoke-interface {v0, v1, v2}, Lcom/amap/api/b/k/am$d;->a(Lcom/amap/api/b/k/m;I)V

    goto :goto_0

    :cond_3
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x66

    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "errorCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "result"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amap/api/b/k/bc;

    invoke-interface {v0, v1, v2}, Lcom/amap/api/b/k/am$d;->a(Lcom/amap/api/b/k/bc;I)V

    goto :goto_0

    :cond_4
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x67

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "errorCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "result"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amap/api/b/k/aa;

    invoke-interface {v0, v1, v2}, Lcom/amap/api/b/k/am$d;->a(Lcom/amap/api/b/k/aa;I)V

    goto/16 :goto_0
.end method

.method private l(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2bc

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/col/cn$d;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Lcom/amap/api/col/cn$d;->b:Lcom/amap/api/b/b/f$a;

    iget-object v0, v0, Lcom/amap/api/col/cn$d;->a:Lcom/amap/api/b/b/e;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v0, v2}, Lcom/amap/api/b/b/f$a;->a(Lcom/amap/api/b/b/e;I)V

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2bd

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/col/cn$c;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/amap/api/col/cn$c;->b:Lcom/amap/api/b/b/f$a;

    iget-object v0, v0, Lcom/amap/api/col/cn$c;->a:Lcom/amap/api/b/b/c;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v0, v2}, Lcom/amap/api/b/b/f$a;->a(Lcom/amap/api/b/b/c;I)V

    goto :goto_0
.end method

.method private m(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x515

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/col/cn$l;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Lcom/amap/api/col/cn$l;->b:Lcom/amap/api/b/n/c$a;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "errorCode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v0, v0, Lcom/amap/api/col/cn$l;->a:Lcom/amap/api/b/n/b;

    invoke-interface {v1, v0, v2}, Lcom/amap/api/b/n/c$a;->a(Lcom/amap/api/b/n/b;I)V

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x516

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/col/cn$k;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/amap/api/col/cn$k;->b:Lcom/amap/api/b/n/c$a;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "errorCode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v0, v0, Lcom/amap/api/col/cn$k;->a:Lcom/amap/api/b/n/a;

    invoke-interface {v1, v0, v2}, Lcom/amap/api/b/n/c$a;->a(Lcom/amap/api/b/n/a;I)V

    goto :goto_0
.end method

.method private n(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/col/cn$j;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Lcom/amap/api/col/cn$j;->b:Lcom/amap/api/b/l/a$a;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "errorCode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v0, v0, Lcom/amap/api/col/cn$j;->a:Lcom/amap/api/b/l/b;

    invoke-interface {v1, v0, v2}, Lcom/amap/api/b/l/a$a;->a(Lcom/amap/api/b/l/b;I)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    :try_start_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/amap/api/col/cn;->k(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MessageHandler"

    const-string v2, "handleMessage"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ci;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/amap/api/col/cn;->j(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/amap/api/col/cn;->i(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/amap/api/col/cn;->h(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/amap/api/col/cn;->g(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/amap/api/col/cn;->f(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p1}, Lcom/amap/api/col/cn;->e(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, p1}, Lcom/amap/api/col/cn;->d(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, p1}, Lcom/amap/api/col/cn;->c(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_9
    invoke-direct {p0, p1}, Lcom/amap/api/col/cn;->b(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_a
    invoke-direct {p0, p1}, Lcom/amap/api/col/cn;->a(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_b
    invoke-direct {p0, p1}, Lcom/amap/api/col/cn;->l(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_c
    invoke-direct {p0, p1}, Lcom/amap/api/col/cn;->m(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_d
    invoke-direct {p0, p1}, Lcom/amap/api/col/cn;->n(Landroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
