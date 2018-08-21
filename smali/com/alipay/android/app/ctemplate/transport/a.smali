.class Lcom/alipay/android/app/ctemplate/transport/a;
.super Ljava/lang/Object;
.source "TemplateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Landroid/content/res/Resources;

.field final synthetic d:Landroid/os/ConditionVariable;

.field final synthetic e:Lcom/alipay/android/app/ctemplate/transport/TemplateManager;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ctemplate/transport/TemplateManager;Ljava/util/Map;Ljava/util/List;Landroid/content/res/Resources;Landroid/os/ConditionVariable;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ctemplate/transport/a;->e:Lcom/alipay/android/app/ctemplate/transport/TemplateManager;

    iput-object p2, p0, Lcom/alipay/android/app/ctemplate/transport/a;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/alipay/android/app/ctemplate/transport/a;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/alipay/android/app/ctemplate/transport/a;->c:Landroid/content/res/Resources;

    iput-object p5, p0, Lcom/alipay/android/app/ctemplate/transport/a;->d:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/ctemplate/transport/a;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/android/app/ctemplate/transport/a;->e:Lcom/alipay/android/app/ctemplate/transport/TemplateManager;

    iget-object v2, p0, Lcom/alipay/android/app/ctemplate/transport/a;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/alipay/android/app/ctemplate/transport/a;->c:Landroid/content/res/Resources;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->a(Ljava/util/List;Landroid/content/res/Resources;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/alipay/android/app/ctemplate/transport/a;->d:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/android/app/ctemplate/transport/a;->d:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    throw v0
.end method
