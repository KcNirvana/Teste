.class Lcom/miui/privacyapps/ui/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final synthetic bby:Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;

.field private title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/privacyapps/ui/d;->bby:Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;Lcom/miui/privacyapps/ui/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/privacyapps/ui/d;-><init>(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;)V

    return-void
.end method

.method static synthetic byf(Lcom/miui/privacyapps/ui/d;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/privacyapps/ui/d;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic byg(Lcom/miui/privacyapps/ui/d;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/miui/privacyapps/ui/d;->title:Landroid/widget/TextView;

    return-object p1
.end method
