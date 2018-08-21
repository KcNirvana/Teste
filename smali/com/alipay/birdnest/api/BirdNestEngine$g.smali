.class public Lcom/alipay/birdnest/api/BirdNestEngine$g;
.super Ljava/lang/Object;
.source "BirdNestEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/birdnest/api/BirdNestEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public A:Z

.field a:Lcom/alipay/birdnest/api/BirdNestEngine;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/alipay/android/app/template/FBResourceClient$Type;

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Lcom/alipay/android/app/template/EventHandler;

.field public j:I

.field public k:Ljava/lang/String;

.field public l:Landroid/app/Activity;

.field public m:Ljava/lang/String;

.field public n:Landroid/view/View;

.field public o:Z

.field public p:Lcom/alipay/android/app/template/FBPluginFactory;

.field public q:Lcom/alipay/android/app/template/JsPluginFactory;

.field public r:Lcom/alipay/android/app/template/OnLoadCallback;

.field public s:Lcom/alipay/android/app/template/TemplateKeyboardService;

.field public t:Lcom/alipay/android/app/template/TemplatePasswordService;

.field public u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public v:Ljava/lang/Object;

.field public w:Lcom/alipay/android/app/template/FBBridge;

.field public x:Lcom/alipay/android/app/template/FBResourceClient;

.field public y:Landroid/content/res/Resources;

.field public z:Lcom/alipay/birdnest/api/BirdNestEngine$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/alipay/android/app/template/FBResourceClient$Type;->MAIN_FRAME:Lcom/alipay/android/app/template/FBResourceClient$Type;

    iput-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->c:Lcom/alipay/android/app/template/FBResourceClient$Type;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->d:Z

    return-void
.end method

.method public constructor <init>(Lcom/alipay/birdnest/api/BirdNestEngine$g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/alipay/android/app/template/FBResourceClient$Type;->MAIN_FRAME:Lcom/alipay/android/app/template/FBResourceClient$Type;

    iput-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->c:Lcom/alipay/android/app/template/FBResourceClient$Type;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->d:Z

    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->a:Lcom/alipay/birdnest/api/BirdNestEngine;

    iput-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->a:Lcom/alipay/birdnest/api/BirdNestEngine;

    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->b:Ljava/util/Map;

    iput-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->b:Ljava/util/Map;

    iget-boolean v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->d:Z

    iput-boolean v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->d:Z

    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->e:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->f:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->g:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->h:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->i:Lcom/alipay/android/app/template/EventHandler;

    iput-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->i:Lcom/alipay/android/app/template/EventHandler;

    iget v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->j:I

    iput v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->j:I

    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->k:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->l:Landroid/app/Activity;

    iput-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->l:Landroid/app/Activity;

    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->m:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->n:Landroid/view/View;

    iput-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->n:Landroid/view/View;

    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->p:Lcom/alipay/android/app/template/FBPluginFactory;

    iput-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->p:Lcom/alipay/android/app/template/FBPluginFactory;

    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->q:Lcom/alipay/android/app/template/JsPluginFactory;

    iput-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->q:Lcom/alipay/android/app/template/JsPluginFactory;

    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->r:Lcom/alipay/android/app/template/OnLoadCallback;

    iput-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->r:Lcom/alipay/android/app/template/OnLoadCallback;

    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->s:Lcom/alipay/android/app/template/TemplateKeyboardService;

    iput-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->s:Lcom/alipay/android/app/template/TemplateKeyboardService;

    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->t:Lcom/alipay/android/app/template/TemplatePasswordService;

    iput-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->t:Lcom/alipay/android/app/template/TemplatePasswordService;

    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->u:Ljava/util/Map;

    iput-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->u:Ljava/util/Map;

    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->v:Ljava/lang/Object;

    iput-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->v:Ljava/lang/Object;

    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->w:Lcom/alipay/android/app/template/FBBridge;

    iput-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->w:Lcom/alipay/android/app/template/FBBridge;

    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->x:Lcom/alipay/android/app/template/FBResourceClient;

    iput-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->x:Lcom/alipay/android/app/template/FBResourceClient;

    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->z:Lcom/alipay/birdnest/api/BirdNestEngine$b;

    iput-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->z:Lcom/alipay/birdnest/api/BirdNestEngine$b;

    iget-boolean v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->A:Z

    iput-boolean v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->A:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/alipay/birdnest/api/BirdNestEngine;
    .locals 1

    iget-object v0, p0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->a:Lcom/alipay/birdnest/api/BirdNestEngine;

    return-object v0
.end method
