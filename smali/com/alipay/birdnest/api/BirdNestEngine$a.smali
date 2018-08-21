.class public Lcom/alipay/birdnest/api/BirdNestEngine$a;
.super Ljava/lang/Object;
.source "BirdNestEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/birdnest/api/BirdNestEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/content/Context;

.field private c:Lcom/alipay/birdnest/api/BirdNestEngine$j;

.field private d:Lcom/alipay/birdnest/api/BirdNestEngine$c;

.field private e:Lcom/alipay/birdnest/api/BirdNestEngine$h;

.field private f:Lcom/alipay/birdnest/api/BirdNestEngine$e;

.field private g:Lcom/alipay/birdnest/api/BirdNestEngine$i;

.field private h:Lcom/alipay/birdnest/api/BirdNestEngine$l;

.field private i:Lcom/alipay/birdnest/api/BirdNestEngine$k;

.field private j:Lcom/alipay/birdnest/api/BirdNestEngine$d;

.field private k:Lcom/alipay/birdnest/api/BirdNestEngine$b;

.field private l:Lcom/alipay/birdnest/api/BirdNestEngine$f;


# direct methods
.method public constructor <init>(ZLandroid/content/Context;Lcom/alipay/birdnest/api/BirdNestEngine$j;Lcom/alipay/birdnest/api/BirdNestEngine$c;Lcom/alipay/birdnest/api/BirdNestEngine$h;Lcom/alipay/birdnest/api/BirdNestEngine$e;Lcom/alipay/birdnest/api/BirdNestEngine$i;Lcom/alipay/birdnest/api/BirdNestEngine$f;Lcom/alipay/birdnest/api/BirdNestEngine$l;Lcom/alipay/birdnest/api/BirdNestEngine$k;Lcom/alipay/birdnest/api/BirdNestEngine$b;Lcom/alipay/birdnest/api/BirdNestEngine$d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$a;->a:Z

    iput-boolean p1, p0, Lcom/alipay/birdnest/api/BirdNestEngine$a;->a:Z

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$a;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/birdnest/api/BirdNestEngine$a;->c:Lcom/alipay/birdnest/api/BirdNestEngine$j;

    iput-object p4, p0, Lcom/alipay/birdnest/api/BirdNestEngine$a;->d:Lcom/alipay/birdnest/api/BirdNestEngine$c;

    iput-object p5, p0, Lcom/alipay/birdnest/api/BirdNestEngine$a;->e:Lcom/alipay/birdnest/api/BirdNestEngine$h;

    iput-object p6, p0, Lcom/alipay/birdnest/api/BirdNestEngine$a;->f:Lcom/alipay/birdnest/api/BirdNestEngine$e;

    iput-object p7, p0, Lcom/alipay/birdnest/api/BirdNestEngine$a;->g:Lcom/alipay/birdnest/api/BirdNestEngine$i;

    iput-object p8, p0, Lcom/alipay/birdnest/api/BirdNestEngine$a;->l:Lcom/alipay/birdnest/api/BirdNestEngine$f;

    iput-object p9, p0, Lcom/alipay/birdnest/api/BirdNestEngine$a;->h:Lcom/alipay/birdnest/api/BirdNestEngine$l;

    iput-object p10, p0, Lcom/alipay/birdnest/api/BirdNestEngine$a;->i:Lcom/alipay/birdnest/api/BirdNestEngine$k;

    iput-object p11, p0, Lcom/alipay/birdnest/api/BirdNestEngine$a;->k:Lcom/alipay/birdnest/api/BirdNestEngine$b;

    iput-object p12, p0, Lcom/alipay/birdnest/api/BirdNestEngine$a;->j:Lcom/alipay/birdnest/api/BirdNestEngine$d;

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/alipay/birdnest/api/BirdNestEngine$f;
    .locals 1

    iget-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$a;->l:Lcom/alipay/birdnest/api/BirdNestEngine$f;

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$a;->a:Z

    return v0
.end method

.method public c()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$a;->b:Landroid/content/Context;

    return-object v0
.end method

.method public d()Lcom/alipay/birdnest/api/BirdNestEngine$j;
    .locals 1

    iget-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$a;->c:Lcom/alipay/birdnest/api/BirdNestEngine$j;

    return-object v0
.end method

.method public e()Lcom/alipay/birdnest/api/BirdNestEngine$c;
    .locals 1

    iget-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$a;->d:Lcom/alipay/birdnest/api/BirdNestEngine$c;

    return-object v0
.end method

.method public f()Lcom/alipay/birdnest/api/BirdNestEngine$h;
    .locals 1

    iget-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$a;->e:Lcom/alipay/birdnest/api/BirdNestEngine$h;

    return-object v0
.end method

.method public g()Lcom/alipay/birdnest/api/BirdNestEngine$e;
    .locals 1

    iget-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$a;->f:Lcom/alipay/birdnest/api/BirdNestEngine$e;

    return-object v0
.end method

.method public h()Lcom/alipay/birdnest/api/BirdNestEngine$i;
    .locals 1

    iget-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$a;->g:Lcom/alipay/birdnest/api/BirdNestEngine$i;

    return-object v0
.end method

.method public i()Lcom/alipay/birdnest/api/BirdNestEngine$l;
    .locals 1

    iget-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$a;->h:Lcom/alipay/birdnest/api/BirdNestEngine$l;

    return-object v0
.end method

.method public j()Lcom/alipay/birdnest/api/BirdNestEngine$b;
    .locals 1

    iget-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$a;->k:Lcom/alipay/birdnest/api/BirdNestEngine$b;

    return-object v0
.end method

.method public k()Lcom/alipay/birdnest/api/BirdNestEngine$d;
    .locals 1

    iget-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$a;->j:Lcom/alipay/birdnest/api/BirdNestEngine$d;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Config{debuggable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/birdnest/api/BirdNestEngine$a;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", applicationCtx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/birdnest/api/BirdNestEngine$a;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", transport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/birdnest/api/BirdNestEngine$a;->c:Lcom/alipay/birdnest/api/BirdNestEngine$j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", embedTemplateProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/birdnest/api/BirdNestEngine$a;->d:Lcom/alipay/birdnest/api/BirdNestEngine$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", resourceProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/birdnest/api/BirdNestEngine$a;->e:Lcom/alipay/birdnest/api/BirdNestEngine$h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", idProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/birdnest/api/BirdNestEngine$a;->f:Lcom/alipay/birdnest/api/BirdNestEngine$e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", settingProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/birdnest/api/BirdNestEngine$a;->g:Lcom/alipay/birdnest/api/BirdNestEngine$i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", uiWidgetProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/birdnest/api/BirdNestEngine$a;->h:Lcom/alipay/birdnest/api/BirdNestEngine$l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", devicePropProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/birdnest/api/BirdNestEngine$a;->k:Lcom/alipay/birdnest/api/BirdNestEngine$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", logTracer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/birdnest/api/BirdNestEngine$a;->l:Lcom/alipay/birdnest/api/BirdNestEngine$f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
