
/*
 * Main.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class Main : SEScene
{
SESprite image1;
SESprite image2;
SESprite image3;
SESprite image4;
SESprite text;
double transparency=0;
public void initialize(SEResourceCache rsc) {
base.initialize(rsc);
add_sprite_for_color(Color.instance("blue"), get_scene_width(), get_scene_height());

rsc.prepare_image("mypic","pic",get_scene_width()*0.5, get_scene_height()*0.5);
rsc.prepare_image("mypictwo","pictwo",get_scene_width()*0.5, get_scene_height()*0.5);
rsc.prepare_image("mypicthree","picthree",get_scene_width()*0.5, get_scene_height()*0.5);
rsc.prepare_image("mypicthree2","picthree2",get_scene_width()*0.5, get_scene_height()*0.5);

rsc.prepare_font("myfont","arial bold color=red", 40);
image1= add_sprite_for_image(SEImage.for_resource("mypic"));
image2= add_sprite_for_image(SEImage.for_resource("mypictwo"));
image3= add_sprite_for_image(SEImage.for_resource("mypicthree"));
image4= add_sprite_for_image(SEImage.for_resource("mypicthree2"));
text= add_sprite_for_text("","myfont");

image1.move(0,0);
image2.move(get_scene_width()*0.5,0);
image3.move(0, get_scene_height()*0.5);
image4.move(get_scene_width()*0.5,get_scene_height()*0.5);
}
public void on_key_press(String name, String str) {
base.on_key_press(name, str);
text.set_text("on_key_press");	
}  

public void on_key_release(String name, String str) {
base.on_key_press(name, str);
text.set_text("on_key_release");	
}  

public void on_pointer_press(SEPointerInfo pi) {
base.on_pointer_press(pi);

if(pi.is_inside(0,0,0.5*get_scene_width(), 0.5*get_scene_height())) {
text.set_text("skull");
text.move(0.25*get_scene_width()-text.get_width()*0.5, 0.25*get_scene_height()-0.5*text.get_height());
image1.set_alpha(0.5);
image2.set_alpha(1);
image3.set_alpha(1);
image4.set_alpha(1);	
}

else if(pi.is_inside(get_scene_width()*0.5,0,0.5*get_scene_width(), 0.5*get_scene_height())) {
text.set_text("cards");
text.move(0.75*get_scene_width()-text.get_width()*0.5, 0.25*get_scene_height()-0.5*text.get_height());
image2.set_alpha(0.5);
image1.set_alpha(1);
image3.set_alpha(1);
image4.set_alpha(1);	
}

else if(pi.is_inside(0,get_scene_height()*0.5,0.5*get_scene_width(), 0.5*get_scene_height())) {
text.set_text("dioactive");
text.move(0.25*get_scene_width()-text.get_width()*0.5, 0.75*get_scene_height()-0.5*text.get_height());
image3.set_alpha(0.5);
image1.set_alpha(1);
image2.set_alpha(1);
image4.set_alpha(1);	
}

else if(pi.is_inside(get_scene_width()*0.5,get_scene_height()*0.5,0.5*get_scene_width(), 0.5*get_scene_height())) {
text.set_text("love");
text.move(0.75*get_scene_width()-text.get_width()*0.5, 0.75*get_scene_height()-0.5*text.get_height());
image4.set_alpha(0.5);
image1.set_alpha(1);
image2.set_alpha(1);
image3.set_alpha(1);	
}
}
}
