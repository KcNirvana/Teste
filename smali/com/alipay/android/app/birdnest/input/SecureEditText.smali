.class public Lcom/alipay/android/app/birdnest/input/SecureEditText;
.super Landroid/widget/EditText;
.source "SecureEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/birdnest/input/SecureEditText$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alipay/android/app/birdnest/input/SecureEditText$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/input/SecureEditText;->a:Lcom/alipay/android/app/birdnest/input/SecureEditText$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/input/SecureEditText;->a:Lcom/alipay/android/app/birdnest/input/SecureEditText$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/input/SecureEditText;->a:Lcom/alipay/android/app/birdnest/input/SecureEditText$a;

    return-void
.end method


# virtual methods
.method public sendAccessibilityEvent(I)V
    .locals 0

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method public setSendAccessiBilityEventListener(Lcom/alipay/android/app/birdnest/input/SecureEditText$a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/birdnest/input/SecureEditText;->a:Lcom/alipay/android/app/birdnest/input/SecureEditText$a;

    return-void
.end method
