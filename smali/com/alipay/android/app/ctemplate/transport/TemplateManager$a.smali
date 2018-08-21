.class public Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;
.super Ljava/lang/Object;
.source "TemplateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/ctemplate/transport/TemplateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;->c:Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;

    return-void
.end method
