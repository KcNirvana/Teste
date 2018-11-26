.class final Lcom/miui/gamebooster/ui/Y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final synthetic du:[I


# instance fields
.field final synthetic ds:Lcom/miui/gamebooster/ui/c;

.field final synthetic dt:Lcom/miui/gamebooster/constants/EnumCollection$NextDo;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/c;Lcom/miui/gamebooster/constants/EnumCollection$NextDo;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/Y;->ds:Lcom/miui/gamebooster/ui/c;

    iput-object p2, p0, Lcom/miui/gamebooster/ui/Y;->dt:Lcom/miui/gamebooster/constants/EnumCollection$NextDo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic el()[I
    .locals 3

    sget-object v0, Lcom/miui/gamebooster/ui/Y;->du:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/gamebooster/ui/Y;->du:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/gamebooster/constants/EnumCollection$NextDo;->values()[Lcom/miui/gamebooster/constants/EnumCollection$NextDo;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$NextDo;->qD:Lcom/miui/gamebooster/constants/EnumCollection$NextDo;

    invoke-virtual {v1}, Lcom/miui/gamebooster/constants/EnumCollection$NextDo;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$NextDo;->qE:Lcom/miui/gamebooster/constants/EnumCollection$NextDo;

    invoke-virtual {v1}, Lcom/miui/gamebooster/constants/EnumCollection$NextDo;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$NextDo;->qF:Lcom/miui/gamebooster/constants/EnumCollection$NextDo;

    invoke-virtual {v1}, Lcom/miui/gamebooster/constants/EnumCollection$NextDo;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/miui/gamebooster/ui/Y;->du:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/securitycenter/a;->brO(Z)V

    invoke-static {}, Lcom/miui/gamebooster/ui/Y;->el()[I

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/Y;->dt:Lcom/miui/gamebooster/constants/EnumCollection$NextDo;

    invoke-virtual {v1}, Lcom/miui/gamebooster/constants/EnumCollection$NextDo;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/Y;->ds:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bU(Lcom/miui/gamebooster/ui/c;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/Y;->ds:Lcom/miui/gamebooster/ui/c;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/c;->aw()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
