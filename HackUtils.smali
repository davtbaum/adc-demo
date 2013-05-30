.class public Lcom/apkudo/util/HackUtils;
.super Landroid/app/Activity;
.source "HackUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static saveSnap(Landroid/graphics/Bitmap;)V
    .registers 5
    .parameter "bmp"

    .prologue
    .line 18
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/sdcard/test.png"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 19
    .local v1, out:Ljava/io/FileOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 20
    const-string v2, "ApkudoHacks"

    const-string v3, "The image has been saved!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 24
    .end local v1           #out:Ljava/io/FileOutputStream;
    :goto_15
    return-void

    .line 21
    :catch_16
    move-exception v0

    .line 22
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/apkudo/util/HackUtils;->setContentView(I)V

    .line 14
    return-void
.end method
